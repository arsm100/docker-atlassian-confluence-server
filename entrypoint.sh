#!/bin/bash
set -euo pipefail

function log {
    echo '[Entrypoint]' $*
}

######################################################################
# Generate server.xml for Tomcat.  We lower-case these vars to be
# compatible with the Ansible templates in
# https://bitbucket.org/atlassian/dc-deployments-automation

# Previous names for parameters, preserved for backwards compatability
: ${CATALINA_CONNECTOR_PROXYNAME:=}
: ${CATALINA_CONNECTOR_PROXYPORT:=}
: ${CATALINA_CONNECTOR_SCHEME:=http}
: ${CATALINA_CONNECTOR_SECURE:=false}
: ${CATALINA_CONTEXT_PATH:=}

: ${CATALINA_OPTS:=}
export CATALINA_OPTS

# Use new var name, or previous var name, or default...
export atl_proxy_name=${ATL_PROXY_NAME:=$CATALINA_CONNECTOR_PROXYNAME}
export atl_proxy_port=${ATL_PROXY_PORT:=$CATALINA_CONNECTOR_PROXYPORT}
export atl_tomcat_secure=${ATL_TOMCAT_SECURE:=$CATALINA_CONNECTOR_SECURE}
export atl_tomcat_scheme=${ATL_TOMCAT_SCHEME:=$CATALINA_CONNECTOR_SCHEME}
export atl_tomcat_contextpath=${ATL_TOMCAT_CONTEXTPATH:=$CATALINA_CONTEXT_PATH}

export atl_tomcat_port=${ATL_TOMCAT_PORT:=8090}
export atl_tomcat_mgmt_port=${ATL_TOMCAT_MGMT_PORT:=8000}
export atl_tomcat_maxthreads=${ATL_TOMCAT_MAXTHREADS:=200}
export atl_tomcat_minsparethreads=${ATL_TOMCAT_MINSPARETHREADS:=10}
export atl_tomcat_connectiontimeout=${ATL_TOMCAT_CONNECTIONTIMEOUT:=20000}
export atl_tomcat_enablelookups=${ATL_TOMCAT_ENABLELOOKUPS:=false}
export atl_tomcat_protocol=${ATL_TOMCAT_PROTOCOL:=HTTP/1.1}
export atl_tomcat_redirectport=${ATL_TOMCAT_REDIRECTPORT:=8443}
export atl_tomcat_acceptcount=${ATL_TOMCAT_ACCEPTCOUNT:=10}

log "Generating ${CONFLUENCE_INSTALL_DIR}/conf/server.xml"
/opt/atlassian/bin/templater.sh \
    /opt/atlassian/etc/server.xml.j2 \
    > ${CONFLUENCE_INSTALL_DIR}/conf/server.xml



# Start Confluence as the correct user
if [ "${UID}" -eq 0 ]; then
    echo "User is currently root. Will change directory ownership to ${RUN_USER}:${RUN_GROUP}, then downgrade permission to ${RUN_USER}"
    PERMISSIONS_SIGNATURE=$(stat -c "%u:%U:%a" "${CONFLUENCE_HOME}")
    EXPECTED_PERMISSIONS=$(id -u ${RUN_USER}):${RUN_USER}:700
    if [ "${PERMISSIONS_SIGNATURE}" != "${EXPECTED_PERMISSIONS}" ]; then
        chmod -R 700 "${CONFLUENCE_HOME}" &&
            chown -R "${RUN_USER}:${RUN_GROUP}" "${CONFLUENCE_HOME}"
    fi
    # Now drop privileges
    exec su -s /bin/bash "${RUN_USER}" -c "$CONFLUENCE_INSTALL_DIR/bin/start-confluence.sh $@"
else
    exec "$CONFLUENCE_INSTALL_DIR/bin/start-confluence.sh" "$@"
fi
