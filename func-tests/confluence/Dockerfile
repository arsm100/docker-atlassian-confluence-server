ARG TEST_TARGET_IMAGE
FROM $TEST_TARGET_IMAGE

COPY  confluence-home/ /var/atlassian/application-data/confluence/
RUN chown -R confluence.confluence /var/atlassian/application-data/confluence
