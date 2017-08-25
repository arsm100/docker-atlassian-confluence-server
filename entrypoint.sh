#!/bin/bash
set -euo pipefail

# Setup Catalina Opts
: ${CATALINA_CONNECTOR_PROXYNAME:=}
: ${CATALINA_CONNECTOR_PROXYPORT:=}
: ${CATALINA_CONNECTOR_SCHEME:=http}
: ${CATALINA_CONNECTOR_SECURE:=false}

: ${CATALINA_OPTS:=}

: ${JAVA_OPTS:=}

CATALINA_OPTS="${CATALINA_OPTS} -DcatalinaConnectorProxyName=${CATALINA_CONNECTOR_PROXYNAME}"
CATALINA_OPTS="${CATALINA_OPTS} -DcatalinaConnectorProxyPort=${CATALINA_CONNECTOR_PROXYPORT}"
CATALINA_OPTS="${CATALINA_OPTS} -DcatalinaConnectorScheme=${CATALINA_CONNECTOR_SCHEME}"
CATALINA_OPTS="${CATALINA_OPTS} -DcatalinaConnectorSecure=${CATALINA_CONNECTOR_SECURE}"

export JAVA_OPTS="${JAVA_OPTS} ${CATALINA_OPTS}"


# Start Bamboo as the correct user
if [ "${UID}" -eq 0 ]; then
    echo "User is currently root. Will change directories to daemon control, then downgrade permission to daemon"
    mkdir -p "${CONFLUENCE_HOME}/lib" &&
        chmod -R 700 "${CONFLUENCE_HOME}" &&
        chown -R "${RUN_USER}:${RUN_GROUP}" "${CONFLUENCE_HOME}"
    # Now drop privileges
    exec su -s /bin/bash "${RUN_USER}" -c "$CONFLUENCE_INSTALL_DIR/bin/start-confluence.sh $@"
else
    exec "$CONFLUENCE_INSTALL_DIR/bin/start-confluence.sh" "$@"
fi
