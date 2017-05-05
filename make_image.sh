#!/bin/sh

NAME=$(basename $PWD)

# create the image
docker build -t ${NAME} -f Dockerfile $PWD 

# create a container from it
docker create --name ${NAME} ${NAME}
