FROM ARG BASE_IMAGE=adoptopenjdk/openjdk11:slim
FROM $BASE_IMAGE

ENV RUN_USER							confluence
ENV RUN_GROUP							confluence
ENV RUN_UID							2002
ENV RUN_GID							2002

# https://confluence.atlassian.com/doc/confluence-home-and-other-important-directories-590259707.html
ENV CONFLUENCE_HOME          				/var/atlassian/application-data/confluence
ENV CONFLUENCE_INSTALL_DIR   				/opt/atlassian/confluence

WORKDIR $CONFLUENCE_HOME

# Expose HTTP and Synchrony ports
EXPOSE 8090
EXPOSE 8091

CMD ["/entrypoint.py", "-fg"]
ENTRYPOINT ["/sbin/tini", "--"]

RUN apt-get update \
	&& apt-get install -y --no-install-recommends fontconfig python3 python3-jinja2 \
	&& apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

ARG TINI_VERSION=v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /sbin/tini
RUN chmod +x /sbin/tini

ARG CONFLUENCE_VERSION
ARG DOWNLOAD_URL=https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz

RUN groupadd --gid ${RUN_GID} ${RUN_GROUP} \
    && useradd --uid ${RUN_UID} --gid ${RUN_GID} --home-dir ${CONFLUENCE_HOME} --shell /bin/bash ${RUN_USER} \
    && echo PATH=$PATH > /etc/environment \
    \
    && mkdir -p                       	 ${CONFLUENCE_INSTALL_DIR} \
    && curl -L --silent                  ${DOWNLOAD_URL} | tar -xz --strip-components=1 -C "${CONFLUENCE_INSTALL_DIR}" \
    && chmod -R "u=rwX,g=rX,o=rX"        ${CONFLUENCE_INSTALL_DIR}/ \
    && chown -R root.                    ${CONFLUENCE_INSTALL_DIR}/ \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/logs \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/temp \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/work \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_HOME} \
    \
    && sed -i -e 's/-Xms\([0-9]\+[kmg]\) -Xmx\([0-9]\+[kmg]\)/-Xms\${JVM_MINIMUM_MEMORY:=\1} -Xmx\${JVM_MAXIMUM_MEMORY:=\2} \${JVM_SUPPORT_RECOMMENDED_ARGS} -Dconfluence.home=\${CONFLUENCE_HOME}/g' ${CONFLUENCE_INSTALL_DIR}/bin/setenv.sh

VOLUME ["${CONFLUENCE_HOME}"] # Must be declared after setting perms

COPY entrypoint.py              			/entrypoint.py
COPY config/*						/opt/atlassian/etc/
