#!/bin/bash

WORKSPACE=/var/jenkins_home/workspace/the_nodejs_examble_pipeline

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache