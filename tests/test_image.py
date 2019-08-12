import pytest

import io
import tarfile
import testinfra
import time
from lxml import etree

import requests


# Run an image and wrap it in a TestInfra host for convenience.
# FIXME: There's probably a way to turn this into a fixture with parameters.
def run_image(docker_cli, image, environment={}, ports={}):
    container = docker_cli.containers.run(image, environment=environment, ports=ports, detach=True)
    return testinfra.get_host("docker://"+container.id)

# TestInfra's process command doesn't seem to work for arg matching
def get_procs(container):
    ps = container.run('ps -axo args')
    return ps.stdout.split('\n')

def wait_for_proc(container, proc_str, max_wait=10):
    waited = 0
    while waited < max_wait:
        procs = list(filter(lambda p: proc_str in p, get_procs(container)))
        if len(procs) > 0:
            return procs[0]
        time.sleep(0.1)
        waited += 0.1

    raise TimeoutError("Failed to find target process")

def wait_for_file(container, path, max_wait=10):
    waited = 0
    while waited < max_wait:
        if container.file(path).exists:
            return
        time.sleep(0.1)
        waited += 0.1

    raise TimeoutError("Failed to find target process")


######################################################################
# Tests

def test_jvm_args(docker_cli, image):
    environment = {
        'JVM_MINIMUM_MEMORY': '383m',
        'JVM_MAXIMUM_MEMORY': '2047m',
        'JVM_SUPPORT_RECOMMENDED_ARGS': '-verbose:gc',
    }
    container = run_image(docker_cli, image, environment=environment)
    jvm = wait_for_proc(container, "org.apache.catalina.startup.Bootstrap")

    assert f'-Xms{environment.get("JVM_MINIMUM_MEMORY")}' in jvm
    assert f'-Xmx{environment.get("JVM_MAXIMUM_MEMORY")}' in jvm
    assert environment.get('JVM_SUPPORT_RECOMMENDED_ARGS') in jvm


def test_install_permissions(docker_cli, image):
    container = run_image(docker_cli, image)

    assert container.file('/opt/atlassian/confluence/conf/server.xml').user == 'root'

    for d in ['logs', 'work', 'temp']:
        path = '/opt/atlassian/confluence/{}/'.format(d)
        assert container.file(path).user == 'confluence'


def test_first_run_state(docker_cli, image):
    PORT = 8090
    container = run_image(docker_cli, image, ports={PORT: PORT})
    jvm = wait_for_proc(container, "org.apache.catalina.startup.Bootstrap")

    for i in range(20):
        try:
            r = requests.get(f'http://localhost:{PORT}/status')
        except requests.exceptions.ConnectionError:
            pass
        else:
            if r.status_code == 200:
                state = r.json().get('state')
                assert state in ('STARTING', 'FIRST_RUN')
                return
        time.sleep(1)
    raise TimeoutError


def test_server_xml_defaults(docker_cli, image):
    container = run_image(docker_cli, image)
    _jvm = wait_for_proc(container, "org.apache.catalina.startup.Bootstrap")

    xml = etree.fromstring(container.file('/opt/atlassian/confluence/conf/server.xml').content)
    connector = xml.find('.//Connector')
    context = xml.find('.//Context')

    assert connector.get('port') == '8090'
    assert connector.get('maxThreads') == '200'
    assert connector.get('minSpareThreads') == '10'
    assert connector.get('connectionTimeout') == '20000'
    assert connector.get('enableLookups') == 'false'
    assert connector.get('protocol') == 'HTTP/1.1'
    assert connector.get('acceptCount') == '10'
    assert connector.get('secure') == 'false'
    assert connector.get('scheme') == 'http'
    assert connector.get('proxyName') == ''
    assert connector.get('proxyPort') == ''

def test_server_xml_params(docker_cli, image):
    environment = {
        'ATL_TOMCAT_MGMT_PORT': '8006',
        'ATL_TOMCAT_PORT': '9090',
        'ATL_TOMCAT_MAXTHREADS': '201',
        'ATL_TOMCAT_MINSPARETHREADS': '11',
        'ATL_TOMCAT_CONNECTIONTIMEOUT': '20001',
        'ATL_TOMCAT_ENABLELOOKUPS': 'true',
        'ATL_TOMCAT_PROTOCOL': 'HTTP/2',
        'ATL_TOMCAT_ACCEPTCOUNT': '11',
        'ATL_TOMCAT_SECURE': 'true',
        'ATL_TOMCAT_SCHEME': 'https',
        'ATL_PROXY_NAME': 'jira.atlassian.com',
        'ATL_PROXY_PORT': '443',
        'ATL_TOMCAT_CONTEXTPATH': '/myjira',
    }
    container = run_image(docker_cli, image, environment=environment)
    _jvm = wait_for_proc(container, "org.apache.catalina.startup.Bootstrap")

    xml = etree.fromstring(container.file('/opt/atlassian/confluence/conf/server.xml').content)
    connector = xml.find('.//Connector')
    context = xml.find('.//Context')

    assert xml.get('port') == environment.get('ATL_TOMCAT_MGMT_PORT')

    assert connector.get('port') == environment.get('ATL_TOMCAT_PORT')
    assert connector.get('maxThreads') == environment.get('ATL_TOMCAT_MAXTHREADS')
    assert connector.get('minSpareThreads') == environment.get('ATL_TOMCAT_MINSPARETHREADS')
    assert connector.get('connectionTimeout') == environment.get('ATL_TOMCAT_CONNECTIONTIMEOUT')
    assert connector.get('enableLookups') == environment.get('ATL_TOMCAT_ENABLELOOKUPS')
    assert connector.get('protocol') == environment.get('ATL_TOMCAT_PROTOCOL')
    assert connector.get('acceptCount') == environment.get('ATL_TOMCAT_ACCEPTCOUNT')
    assert connector.get('secure') == environment.get('ATL_TOMCAT_SECURE')
    assert connector.get('scheme') == environment.get('ATL_TOMCAT_SCHEME')
    assert connector.get('proxyName') == environment.get('ATL_PROXY_NAME')
    assert connector.get('proxyPort') == environment.get('ATL_PROXY_PORT')

    assert context.get('path') == environment.get('ATL_TOMCAT_CONTEXTPATH')


def test_seraph_defaults(docker_cli, image):
    container = run_image(docker_cli, image)
    wait_for_file(container, "/opt/atlassian/confluence/confluence/WEB-INF/classes/seraph-config.xml")

    xml = etree.fromstring(container.file('/opt/atlassian/confluence/confluence/WEB-INF/classes/seraph-config.xml').content)
    param = xml.xpath('//param-name[text()="autologin.cookie.age"]')[0].getnext()
    assert param.text == "1209600"


def test_seraph_login_set(docker_cli, image):
    container = run_image(docker_cli, image, environment={"ATL_AUTOLOGIN_COOKIE_AGE": "TEST_VAL"})
    wait_for_file(container, "/opt/atlassian/confluence/confluence/WEB-INF/classes/seraph-config.xml")

    xml = etree.fromstring(container.file('/opt/atlassian/confluence/confluence/WEB-INF/classes/seraph-config.xml').content)
    param = xml.xpath('//param-name[text()="autologin.cookie.age"]')[0].getnext()
    assert param.text == "TEST_VAL"


def test_conf_init_set(docker_cli, image):
    container = run_image(docker_cli, image, environment={"CONFLUENCE_HOME": "/tmp/"})
    wait_for_file(container, "/opt/atlassian/confluence/confluence/WEB-INF/classes/confluence-init.properties")

    init = container.file('/opt/atlassian/confluence/confluence/WEB-INF/classes/confluence-init.properties')
    assert init.contains("confluence.home = /tmp/")


def test_confluence_xml_default(docker_cli, image):
    container = run_image(docker_cli, image)
    wait_for_file(container, "/opt/atlassian/confluence/confluence/WEB-INF/classes/confluence-init.properties")
    #_jvm = wait_for_proc(container, "org.apache.catalina.startup.Bootstrap")

    xml = etree.fromstring(container.file('/var/atlassian/application-data/confluence/confluence.cfg.xml').content)
    assert xml.xpath('/confluence-configuration/buildNumber')[0].text == "0"
    assert xml.xpath('/confluence-configuration/properties/property[@name="hibernate.connection.url"]') == []
    assert xml.xpath('/confluence-configuration/properties/property[@name="confluence.cluster.home"]') == []

def test_confluence_xml_postgres(docker_cli, image):
    environment = {
        'ATL_DB_TYPE': 'postgresql',
        'ATL_JDBC_URL': 'atl_jdbc_url',
        'ATL_JDBC_USER': 'atl_jdbc_user',
        'ATL_JDBC_PASSWORD': 'atl_jdbc_password'
    }
    container = run_image(docker_cli, image, environment=environment)
    wait_for_file(container, "/opt/atlassian/confluence/confluence/WEB-INF/classes/confluence-init.properties")

    xml = etree.fromstring(container.file('/var/atlassian/application-data/confluence/confluence.cfg.xml').content)
    assert xml.xpath('//property[@name="hibernate.connection.url"]')[0].text == "atl_jdbc_url"
    assert xml.xpath('//property[@name="hibernate.connection.username"]')[0].text == "atl_jdbc_user"
    assert xml.xpath('//property[@name="hibernate.connection.password"]')[0].text == "atl_jdbc_password"
    assert xml.xpath('//property[@name="confluence.database.choice"]')[0].text == "postgresql"
    assert xml.xpath('//property[@name="hibernate.dialect"]')[0].text == "com.atlassian.confluence.impl.hibernate.dialect.PostgreSQLDialect"
    assert xml.xpath('//property[@name="hibernate.connection.driver_class"]')[0].text == "org.postgresql.Driver"

    assert xml.xpath('//property[@name="hibernate.c3p0.min_size"]')[0].text == "20"
    assert xml.xpath('//property[@name="hibernate.c3p0.max_size"]')[0].text == "100"
    assert xml.xpath('//property[@name="hibernate.c3p0.timeout"]')[0].text == "30"
    assert xml.xpath('//property[@name="hibernate.c3p0.idle_test_period"]')[0].text == "100"
    assert xml.xpath('//property[@name="hibernate.c3p0.max_statements"]')[0].text == "0"
    assert xml.xpath('//property[@name="hibernate.c3p0.validate"]')[0].text == "false"
    assert xml.xpath('//property[@name="hibernate.c3p0.acquire_increment"]')[0].text == "1"
    assert xml.xpath('//property[@name="hibernate.c3p0.preferredTestQuery"]')[0].text == "select 1"

def test_confluence_xml_postgres_all_set(docker_cli, image):
    environment = {
        'ATL_DB_TYPE': 'postgresql',
        'ATL_JDBC_URL': 'atl_jdbc_url',
        'ATL_JDBC_USER': 'atl_jdbc_user',
        'ATL_JDBC_PASSWORD': 'atl_jdbc_password',
        'ATL_DB_POOLMAXSIZE': 'x100',
        'ATL_DB_POOLMINSIZE': 'x20',
        'ATL_DB_TIMEOUT': 'x30',
        'ATL_DB_IDLETESTPERIOD': 'x100',
        'ATL_DB_MAXSTATEMENTS': 'x0',
        'ATL_DB_VALIDATE': 'xfalse',
        'ATL_DB_ACQUIREINCREMENT': 'x1',
        'ATL_DB_VALIDATIONQUERY': 'xselect 1'
    }
    container = run_image(docker_cli, image, environment=environment)
    wait_for_file(container, "/var/atlassian/application-data/confluence/confluence.cfg.xml")

    xml = etree.fromstring(container.file('/var/atlassian/application-data/confluence/confluence.cfg.xml').content)
    assert xml.xpath('//property[@name="hibernate.connection.driver_class"]')[0].text == "org.postgresql.Driver"
    assert xml.xpath('//property[@name="hibernate.dialect"]')[0].text == "com.atlassian.confluence.impl.hibernate.dialect.PostgreSQLDialect"
    assert xml.xpath('//property[@name="hibernate.c3p0.min_size"]')[0].text == "x20"
    assert xml.xpath('//property[@name="hibernate.c3p0.max_size"]')[0].text == "x100"
    assert xml.xpath('//property[@name="hibernate.c3p0.timeout"]')[0].text == "x30"
    assert xml.xpath('//property[@name="hibernate.c3p0.idle_test_period"]')[0].text == "x100"
    assert xml.xpath('//property[@name="hibernate.c3p0.max_statements"]')[0].text == "x0"
    assert xml.xpath('//property[@name="hibernate.c3p0.validate"]')[0].text == "xfalse"
    assert xml.xpath('//property[@name="hibernate.c3p0.acquire_increment"]')[0].text == "x1"
    assert xml.xpath('//property[@name="hibernate.c3p0.preferredTestQuery"]')[0].text == "xselect 1"


def test_confluence_xml_cluster_aws(docker_cli, image):
    environment = {
        'ATL_CLUSTER_TYPE': 'aws',
        'ATL_HAZELCAST_NETWORK_AWS_IAM_ROLE': 'atl_hazelcast_network_aws_iam_role',
        'ATL_HAZELCAST_NETWORK_AWS_IAM_REGION': 'atl_hazelcast_network_aws_iam_region',
        'ATL_HAZELCAST_NETWORK_AWS_HOST_HEADER': 'atl_hazelcast_network_aws_host_header',
        'ATL_HAZELCAST_NETWORK_AWS_TAG_KEY': 'atl_hazelcast_network_aws_tag_key',
        'ATL_HAZELCAST_NETWORK_AWS_TAG_VALUE': 'atl_hazelcast_network_aws_tag_value',
        'ATL_CLUSTER_NAME': 'atl_cluster_name',
        'ATL_CLUSTER_TTL': 'atl_cluster_ttl'
    }
    container = run_image(docker_cli, image, environment=environment)
    wait_for_file(container, "/var/atlassian/application-data/confluence/confluence.cfg.xml")
    xml = etree.fromstring(container.file('/var/atlassian/application-data/confluence/confluence.cfg.xml').content)

    assert xml.xpath('//property[@name="confluence.cluster"]')[0].text == "true"
    assert xml.xpath('//property[@name="confluence.cluster.join.type"]')[0].text == "aws"

    assert xml.xpath('//property[@name="confluence.cluster.aws.iam.role"]')[0].text == "atl_hazelcast_network_aws_iam_role"
    assert xml.xpath('//property[@name="confluence.cluster.aws.region"]')[0].text == "atl_hazelcast_network_aws_iam_region"
    assert xml.xpath('//property[@name="confluence.cluster.aws.host.header"]')[0].text == "atl_hazelcast_network_aws_host_header"
    assert xml.xpath('//property[@name="confluence.cluster.aws.tag.key"]')[0].text == "atl_hazelcast_network_aws_tag_key"
    assert xml.xpath('//property[@name="confluence.cluster.aws.tag.value"]')[0].text == "atl_hazelcast_network_aws_tag_value"
    assert xml.xpath('//property[@name="confluence.cluster.name"]')[0].text == "atl_cluster_name"
    assert xml.xpath('//property[@name="confluence.cluster.ttl"]')[0].text == "atl_cluster_ttl"
