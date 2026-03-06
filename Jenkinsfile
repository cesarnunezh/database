@Library('devops-shared-lib@main') _

ciPipeline(
  serviceName: 'database-service',
  enableDeploy: false,
  dockerRepo: 'cesarnunezh/database-service',
  localImageName: 'database-service:ci-local',
  imageBuildCmd: 'make build',
  buildCmd: 'make setup',
  lintCmd: 'make lint',
  testCmd: 'make test',
  securityCmd: 'make scan',
  deployRepo: 'https://github.com/cesarnunezh/DevOpsProject.git'
)
