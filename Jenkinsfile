pipeline {
  agent {
    label 'master'
  }
  stages {
    stage('Test') {
        steps{
          sh 'chmod +x ci.sh'
          sh './ci.sh test'
        }
    }
    stage('Build') {
        steps{
            sh 'chmod +x ci.sh'
            sh './ci.sh build'
        }
    }
    stage('Approve of Deploy UAT') {
        steps {
            input message: 'deploy?'
        }
    }

    stage('deploy') {
        steps {
            withKubeConfig([
                credentialsId: '12345678',
                serverUrl: 'https://172.16.173.130:6443',
                contextName: 'kubernetes-admin'
            ]) {
                sh 'chmod +x ci.sh'
                sh './ci.sh deploy'
            }
        }
    }
  }
}
