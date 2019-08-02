import pytest

import io
import tarfile
import time
import xml.etree.ElementTree as etree

import requests


# Helper function to get a file-like object from an image
def get_fileobj_from_container(container, filepath):
    time.sleep(0.5) # Give container a moment if just started
    stream, stat = container.get_archive(filepath)
    f = io.BytesIO()
    for chunk in stream:
        f.write(chunk)
    f.seek(0)
    with tarfile.open(fileobj=f, mode='r') as tar:
        filename = tar.getmembers()[0].name
        file = tar.extractfile(filename)
    return file


# def test_server_xml_defaults(docker_cli, image):
#     container = docker_cli.containers.run(image, detach=True)
#     server_xml = get_fileobj_from_container(container, '/opt/atlassian/jira/conf/server.xml')
#     xml = etree.parse(server_xml) 
#     connector = xml.find('.//Connector')
#     context = xml.find('.//Context')
#     
#     assert connector.get('port') == '8090'
#     assert connector.get('maxThreads') == '200'
#     assert connector.get('minSpareThreads') == '10'
#     assert connector.get('connectionTimeout') == '20000'
#     assert connector.get('enableLookups') == 'false'
#     assert connector.get('protocol') == 'HTTP/1.1'
#     assert connector.get('acceptCount') == '10'
#     assert connector.get('secure') == 'false'
#     assert connector.get('scheme') == 'http'
#     assert connector.get('proxyName') == ''
#     assert connector.get('proxyPort') == ''
# 
# 
# def test_server_xml_params(docker_cli, image):
#     environment = {
#         'ATL_TOMCAT_MGMT_PORT': '8006',
#         'ATL_TOMCAT_PORT': '9090',
#         'ATL_TOMCAT_MAXTHREADS': '201',
#         'ATL_TOMCAT_MINSPARETHREADS': '11',
#         'ATL_TOMCAT_CONNECTIONTIMEOUT': '20001',
#         'ATL_TOMCAT_ENABLELOOKUPS': 'true',
#         'ATL_TOMCAT_PROTOCOL': 'HTTP/2',
#         'ATL_TOMCAT_ACCEPTCOUNT': '11',
#         'ATL_TOMCAT_SECURE': 'true',
#         'ATL_TOMCAT_SCHEME': 'https',
#         'ATL_PROXY_NAME': 'jira.atlassian.com',
#         'ATL_PROXY_PORT': '443',
#         'ATL_TOMCAT_CONTEXTPATH': '/myjira',
#     }
#     container = docker_cli.containers.run(image, environment=environment, detach=True)
#     server_xml = get_fileobj_from_container(container, '/opt/atlassian/jira/conf/server.xml')
#     xml = etree.parse(server_xml)
#     server = xml.getroot()
#     connector = xml.find('.//Connector')
#     context = xml.find('.//Context')
#     
#     assert server.get('port') == environment.get('ATL_TOMCAT_MGMT_PORT')
#     
#     assert connector.get('port') == environment.get('ATL_TOMCAT_PORT')
#     assert connector.get('maxThreads') == environment.get('ATL_TOMCAT_MAXTHREADS')
#     assert connector.get('minSpareThreads') == environment.get('ATL_TOMCAT_MINSPARETHREADS')
#     assert connector.get('connectionTimeout') == environment.get('ATL_TOMCAT_CONNECTIONTIMEOUT')
#     assert connector.get('enableLookups') == environment.get('ATL_TOMCAT_ENABLELOOKUPS')
#     assert connector.get('protocol') == environment.get('ATL_TOMCAT_PROTOCOL')
#     assert connector.get('acceptCount') == environment.get('ATL_TOMCAT_ACCEPTCOUNT')
#     assert connector.get('secure') == environment.get('ATL_TOMCAT_SECURE')
#     assert connector.get('scheme') == environment.get('ATL_TOMCAT_SCHEME')
#     assert connector.get('proxyName') == environment.get('ATL_PROXY_NAME')
#     assert connector.get('proxyPort') == environment.get('ATL_PROXY_PORT')
#     
#     assert context.get('path') == environment.get('ATL_TOMCAT_CONTEXTPATH')
# 
# 
# def test_confluence_cfg_xml_defaults(docker_cli, image):
#     environment = {
#     
#     }
#     container = docker_cli.containers.run(image, environment=environment, detach=True)
#     confluence_cfg_xml = get_fileobj_from_container(container, '/var/atlassian/application-data/confluence/confluence.cfg.xml')
#     xml = etree.parse(confluence_cfg_xml)
#     
# 
# def test_confluence_cfg_xml_params(docker_cli, image):
#     environment = {
#     
#     }
#     container = docker_cli.containers.run(image, environment=environment, detach=True)
#     confluence_cfg_xml = get_fileobj_from_container(container, '/var/atlassian/application-data/confluence/confluence.cfg.xml')
#     xml = etree.parse(confluence_cfg_xml)
 

def test_jvm_args(docker_cli, image):
    environment = {
        'JVM_MINIMUM_MEMORY': '383m',
        'JVM_MAXIMUM_MEMORY': '2047m',
        'JVM_SUPPORT_RECOMMENDED_ARGS': '-verbose:gc',
    }
    container = docker_cli.containers.run(image, environment=environment, detach=True)
    time.sleep(0.5) # JVM doesn't start immediately when container runs
    procs = container.exec_run('ps aux')
    procs_list = procs.output.decode().split('\n')
    jvm = [proc for proc in procs_list if '-Dconfluence.home' in proc][0]
    assert f'-Xms{environment.get("JVM_MINIMUM_MEMORY")}' in jvm
    assert f'-Xmx{environment.get("JVM_MAXIMUM_MEMORY")}' in jvm
    assert environment.get('JVM_SUPPORT_RECOMMENDED_ARGS') in jvm


def test_first_run_state(docker_cli, image):
    PORT = 8090
    container = docker_cli.containers.run(image, ports={PORT: PORT}, detach=True)
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
    