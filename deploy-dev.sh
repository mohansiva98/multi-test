#!/bin/bash
echo "Deploying to DEV environment"
docker run -d --name myapp-dev -p 5000:5000 myapp:${BRANCH_NAME}-${BUILD_NUMBER}
