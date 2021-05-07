#!/bin/bash

set -x
cd `dirname $0`
cd ../docker

VERSION=0.1

docker \
  build . \
  -f Dockerfile.react \
  -t react_test:$VERSION

docker \
  run \
  -it \
  --name react_test \
  -p 8088:8080 \
  -v $HOME/git/react_test:/usr/src/app \
  react_test:$VERSION \
  /bin/bash
