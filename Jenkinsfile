pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Validate') {
      steps { sh 'ls -la schema migrations' }
    }
    stage('Docker Build') {
      steps { sh 'make build' }
    }
  }
}
