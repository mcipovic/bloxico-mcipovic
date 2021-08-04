pipeline {
  agent any
  triggers {
    cron('H/15 * * * *')
  }
  stages {
    stage('Echo') {
      steps {
        echo 'Hello from trigger'
      }
    }

  }
}
