pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          def BRANCH = env.BRANCH_NAME
          echo "Running Build for branch: ${BRANCH}"
          sh './build.sh'
        }
      }
    }

    stage('Deploy') {
      steps {
        script {
          def BRANCH = env.BRANCH_NAME
          if (BRANCH == 'dev') {
            echo 'Deploying to DEV environment'
            sh './deploy-dev.sh'
          } else if (BRANCH == 'prod') {
            echo 'Deploying to PROD environment'
            sh './deploy-prod.sh'
          } else {
            echo "Unknown branch — skipping deployment"
          }
        }
      }
    }
  }
}
