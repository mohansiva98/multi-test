#!/bin/bash
echo "Building Docker image for branch: ${BRANCH_NAME}"
docker build -t myapp:${BRANCH_NAME}-${BUILD_NUMBER} .
