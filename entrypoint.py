#!/usr/bin/python3

import sys
import os
import shutil
import logging
import jinja2 as j2


######################################################################
# Utils

def set_perms(path, user, group, mode):
    shutil.chown(path, user=user, group=group)
    os.chmod(path, mode)

# Setup Jinja2 for templating
jenv = j2.Environment(
    loader=j2.FileSystemLoader('/opt/atlassian/etc/'),
    autoescape=j2.select_autoescape(['xml']))

def gen_cfg(tmpl, target, env, user='root', group='root', mode=0o644):
    logging.info("Generating {} from template {}".format(target, tmpl))
    cfg = jenv.get_template(tmpl).render(env)
    with open(target, 'w') as fd:
        fd.write(cfg)
    set_perms(target, user, group, mode)

logging.basicConfig(level=logging.DEBUG)


######################################################################
# Setup inputs and outputs

# Import all ATL_* and Dockerfile environment variables. We lower-case
# these for compatability with Ansible template convention. We also
# support CATALINA variables from older versions of the Docker images
# for backwards compatability, if the new version is not set.
env = {k.lower(): v
       for k, v in os.environ.items()
       if k.startswith(('ATL_', 'CONFLUENCE_', 'RUN_', 'CATALINA_'))}

# For compatability with the Ansible templates.
env['atl_product_home'] = env['confluence_home']
env['atl_product_home_shared'] = env.get('confluence_shared_home')


######################################################################
# Generate server.xml for Tomcat.

gen_cfg('server.xml.j2', env['confluence_install_dir']+'/conf/server.xml', env)


######################################################################
# Configure seraph login handling.

# The default is two weeks, in seconds, same as the seraph default.
env['atl_autologin_cookie_age'] = env.get('atl_autologin_cookie_age', "1209600")

gen_cfg('seraph-config.xml.j2', env['confluence_install_dir']+'/confluence/WEB-INF/classes/seraph-config.xml', env)


######################################################################
# Configure confluence-init.properties


gen_cfg('confluence-init.properties.j2', env['confluence_install_dir']+'/confluence/WEB-INF/classes/confluence-init.properties', env)

######################################################################
# Configure confluence.cfg.xml

gen_cfg('confluence.cfg.xml.j2', env['confluence_home']+'/confluence.cfg.xml', env,
        user=env['run_user'], group=env['run_group'], mode=0o640)


######################################################################
# Start Confluence as the correct user

start_cmd = "{}/bin/start-confluence.sh".format(env['confluence_install_dir'])
if os.getuid() == 0:
    logging.info("User is currently root. Will change directory ownership to {} then downgrade permissions".format(env['run_user']))
    set_perms(env['confluence_home'], env['run_user'], env['run_group'], 0o700)

    cmd = '/bin/su'
    start_cmd = ' '.join([start_cmd] + sys.argv[1:])
    args = [cmd, env['run_user'], '-c', start_cmd]
else:
    cmd = start_cmd
    args = [start_cmd] + sys.argv[1:]

logging.info("Running Confluence with command '{}', arguments {}".format(cmd, args))
os.execv(cmd, args)
