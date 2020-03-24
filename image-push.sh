#!/bin/bash
docker push localhost:5000/cs/jenkins:latest && \
docker push localhost:5000/cs/jenkins-slave:latest
