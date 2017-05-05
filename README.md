# docker-couch_jwt_auth

CouchDB with couch_jwt_auth plugin in a container

See [couch_jwt_auth](https://github.com/softapalvelin/couch_jwt_auth) for
details on the plugin.

## Installation

The couch_jwt_auth plugin must first be built. A Docker build image is created
and the plugin is built. So we don't leave build tools in the production image
we copy out the built plugin and create a new image.


Create the build image with (uses Dockerfile.build):

$ make_build_image.sh

Then create a container image with (uses Dockerfile, requires built
couch_jwt_auth.tar.gz):

$ make_image.sh

