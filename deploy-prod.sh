#!/bin/bash
echo "Deploying to PROD environment"
docker run -d --name myapp-prod -p 5000:5000 myapp:${BRANCH_NAME}-${BUILD_NUMBER}
