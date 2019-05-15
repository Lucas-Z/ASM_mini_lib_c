pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh ''' 
        gcc main.c -o test
        ./test
        '''
      }
    }
  }
}
