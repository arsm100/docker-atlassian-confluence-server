# Developing Docker images

## Setting up for development

After cloning the repository you will need to clone the submodule:

```
git submodule update --init --recursive
```

You should also add the local githooks, which include checks for the generated
Bitbucket Pipelines configuration. This can be done with:

```
git config core.hooksPath .githooks
```

## Testing

The repository contains a smoke-test suite run on branch/PR builds and as part
of the release process. It uses `docker-compose` to run the image in production
mode with predefined database, and then run a suite of basic tests. *NOTE*: The
tests are not intended to test every aspect of the product, but to ensure basic
functionality works to a degree that we can be confident that there are no
regressions. See [func-tests/smoketests/tests/](func-tests/smoketests/tests/) for the actual tests run.

The default database was generated with the default sample project, but has had
the license elided for security reasons. See below for how to inject it.

### Pre-requisites

To run the functional testing, you are required to define several variables.

```
# String with full Confluence DC license, don't forget the quotes as the license 
can contain special characters that would render the license unusable
CONFLUENCE_TEST_LICENSE='license_string' 

# The user and passwords used to access the product. These are stored in lastpass.
CONFLUENCE_ADMIN='xxx'
CONFLUENCE_ADMIN_PWD='xxx'
```

### Run the smoke test functional suite

This will build a local image based on the latest Confluence version and run the
func-tests against it:

``` 
export CONFLUENCE_VERSION=`curl -s https://marketplace.atlassian.com/rest/2/products/key/confluence/versions/latest | jq -r .name`
docker build --build-arg CONFLUENCE_VERSION=${CONFLUENCE_VERSION} -t confluence-test-image .
docker-compose build --build-arg TEST_TARGET_IMAGE=confluence-test-image ./func-tests/docker-compose.yaml
./func-tests/run-functests confluence-test-image
```

### Develop tests

Make sure CONFLUENCE_TEST_LICENSE, CONFLUENCE_ADMIN, and CONFLUENCE_ADMIN_PWD environment 
variables already are set. Extract confluence home directory and inject the license:

```
cd func-tests
unzip -o confluence-home-6.0.1.zip -d confluence
TEST_TARGET_IMAGE='xxx' ./confluence/inject-license
```

Run the smoke tests

```
cd func-tests
TEST_TARGET_IMAGE='xxx' docker-compose up --force-recreate --always-recreate-deps --abort-on-container-exit --exit-code-from smoketests
```

### Release process

Releases occur automatically; see [bitbucket-pipelines.yml](bitbucket-pipelines.yml).
Due to the large amount of images that are built and tested the pipelines file
is generated from a template that parallelises the builds.  It includes a
self-check for out-of-date pipelines config. To avoid committing stale config it
is recommended you add the supplied pre-commit hook; see the setup section above.

It should be noted that a change to this repository will result in all published
images being regenerated with the latest version of the
[Dockerfile](Dockerfile). As part of the release process the following happens:

* A [Snyk](https://snyk.io) scan is run against the generated container image.
* The image dependencies are registered with Snyk for periodic scanning.
* The above func-test suite is run against the image.

This is all performed by the
[docker-release-maker](https://bitbucket.org/atlassian-docker/docker-release-maker/)
tool/image. See the
[README](https://bitbucket.org/atlassian-docker/docker-release-maker/src/master/README.md)
in that repository for more information.
