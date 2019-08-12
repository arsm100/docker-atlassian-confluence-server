#!/usr/bin/python3

import sys
import os
import shutil
import logging
import jinja2 as j2


def set_perms(path, user, group, mode):
    logging.info("SETTGING PERMS "+path)
    shutil.chown(path, user=user, group=group)
    os.chmod(path, mode)

def chown_all(path, user, group, mode):
    for root, dirs, files in os.walk(path):
        for d in dirs:
            set_perms(os.path.join(root, d), user, group, mode)
        for f in files:
            set_perms(os.path.join(root, d), user, group, mode)
    set_perms(path, user, group, mode)

# Import all ATL_* environment variables. We lower-case these for
# compatability with Ansible template convention. We handle default
# and legacy mappings below.
env = {k.lower(): v
       for k, v in os.environ.items()
       if k.startswith('ATL_')}

# Extract some common parameters
confluence_home = os.environ["CONFLUENCE_HOME"]
confluence_install_dir = os.environ["CONFLUENCE_INSTALL_DIR"]
user = os.environ["RUN_USER"]
group = os.environ["RUN_GROUP"]

# Setup Jinja2 for templating
jenv = j2.Environment(
    loader=j2.FileSystemLoader('/opt/atlassian/etc/'),
    autoescape=j2.select_autoescape(['xml']))

logging.basicConfig(level=logging.DEBUG)


######################################################################
# Generate server.xml for Tomcat.

defaults = {
    # We support some variables from older versions of the Docker images
    # for backwards compatability, if the new version is not set.
    'atl_proxy_name': os.environ.get('CATALINA_CONNECTOR_PROXYNAME'),
    'atl_proxy_port': os.environ.get('CATALINA_CONNECTOR_PROXYPORT'),
    'atl_tomcat_secure': os.environ.get('CATALINA_CONNECTOR_SECURE'),
    'atl_tomcat_scheme': os.environ.get('CATALINA_CONNECTOR_SCHEME'),
    'atl_tomcat_contextpath': os.environ.get('CATALINA_CONTEXT_PATH'),

    # Other default vals
    'atl_tomcat_port': "8090",
    'atl_tomcat_mgmt_port': "8000",
    'atl_tomcat_maxthreads': "200",
    'atl_tomcat_minsparethreads': "10",
    'atl_tomcat_connectiontimeout': "20000",
    'atl_tomcat_enablelookups': "false",
    'atl_tomcat_protocol': "HTTP",
    'atl_tomcat_redirectport': "8443",
    'atl_tomcat_acceptcount': "10",
}

for key, defval in defaults.items():
    if (key not in env) and defval:
        env[key] = defval

logging.info("Generating ${CONFLUENCE_INSTALL_DIR}/conf/server.xml")
print(confluence_install_dir+'/conf/server.xml')
xml = jenv.get_template('server.xml.j2').render(env)
out = confluence_install_dir+'/conf/server.xml'
with open(out, 'w') as fd:
    fd.write(xml)
chown_all(out, user, group, 0o640)


######################################################################
# Start Confluence as the correct user

start_cmd = "{}/bin/start-confluence.sh".format(confluence_install_dir)
if os.getuid() == 0:
    logging.info("User is currently root. Will change directory ownership to {}:{}, then downgrade permission to {}".format(user, group, user))
    chown_all(confluence_home, user, group, 0o700)

    cmd = '/bin/su'
    start_cmd = ' '.join([start_cmd] + sys.argv[1:])
    args = ['-s /bin/bash', user, '-c', start_cmd]
else:
    cmd = start_cmd
    args = sys.argv[1:]

logging.info("Running Confluence with command '{}', arguments {}".format(cmd, args))
os.execv(cmd, args)
