#!/bin/sh -l

ALPINE_VERSION=$1
BRANCH=$2
TOKEN=$3

echo "::set-output name=all-args::$*"

cd /docker-action || exit 1
echo "creating docker image with alpine version: $ALPINE_VERSION"

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build . -t docker-action \
    --build-arg alpine_version="$ALPINE_VERSION" \
    --build-arg branch="$BRANCH" \
    --build-arg token="$TOKEN" \
    && docker run docker-action


