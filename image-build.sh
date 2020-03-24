#!/bin/bash

# Set credentials + Login to Jfrog Artifactory to pull scanner image
cp config.json ~/.docker/config.json && \
docker login tenableio-docker-consec-local.jfrog.io

# Build images
docker build -t cs-scanner jenkins-docker/cs-scanner && \
docker build -t jenkins-master jenkins-docker/master && \
docker tag jenkins-master localhost:5000/cs/jenkins:latest && \
docker build -t jenkins-slave jenkins-docker/slave && \
docker tag jenkins-slave:latest localhost:5000/cs/jenkins-slave:latest 
