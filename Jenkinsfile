pipeline {
  agent {
      docker {
        image 'spiritling/node:10.15.3'
      }
  }
  environment {
     VERSION = sh(script: 'node test.js', , returnStdout: true)
  }
  stages {
    stage('Test') {
        steps{
            sh 'echo "VERSION: "$VERSION'
        }
    }
  }
}
