#!/usr/bin/env bash
DOCKER_REPO=`aws ecr describe-repositories --repository-names jenkins-test-repo | grep repositoryUri | cut -d "\"" -f 4`
Docker build --no-cache -t ${DOCKER_REPO}:1.0 .
Docker push ${DOCKER_REPO}:1.0
