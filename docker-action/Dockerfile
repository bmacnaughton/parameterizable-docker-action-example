# Container image that runs your code
ARG alpine_version
FROM node:${alpine_version}
#FROM alpine:${alpine_version}

ARG branch
ARG token
ENV BRANCH=$branch \
    TOKEN=$token

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT /entrypoint.sh $BRANCH $TOKEN
