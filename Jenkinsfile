pipeline {
  agent any
  stages {
    stage('') {
      steps {
        git(changelog: true, credentialsId: 'git', poll: true, url: 'https://github.com/devblueray/tictactoe.git', branch: 'master')
      }
    }
  }
}