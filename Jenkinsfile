pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'make run_tests clean'
      }
    }
  }
}
