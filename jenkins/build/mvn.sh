#!/bin/bash

echo "********************************"
echo "*****Building JAR*****"
echo "********************************"

WORKSPACE=/mnt/c/local/ala/jenkins_home/workspace/pipeline-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
