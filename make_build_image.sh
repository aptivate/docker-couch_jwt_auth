#!/bin/sh

NAME=$(basename $PWD)

# create the build image
docker build -t ${NAME}-build -f Dockerfile.build $PWD

# create a container from it
docker create --name ${NAME}-build ${NAME}-build

# copy out the build assets 
docker cp ${NAME}-build:tmp/build/couch_jwt_auth/couch_jwt_auth.tar.gz couch_jwt_auth.tar.gz
