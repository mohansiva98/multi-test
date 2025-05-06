pipeline {
  agent any

  environment {
    BRANCH = env.BRANCH_NAME  // auto-detect the Git branch
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        echo "Running Build for branch: ${BRANCH}"
        sh './build.sh'
      }
    }

    stage('Deploy') {
      steps {
        script {
          if (BRANCH == 'dev') {
            echo 'Deploying to DEV environment'
            sh './deploy-dev.sh'
          } else if (BRANCH == 'main') {
            echo 'Deploying to PROD environment'
            sh './deploy-prod.sh'
          } else {
            echo "Skipping deployment for branch: ${BRANCH}"
          }
        }
      }
    }
  }

  post {
    always {
      echo "Cleaning up"
      // Docker cleanup (optional)
    }
  }
}
