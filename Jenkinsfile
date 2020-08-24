
pipeline {
   agent any
}

stages {

    stage('build and publish image') {
  steps {
    script {
       checkout scm
       docker.withRegistry(' ', 'dockerhub') {
       def customeImage.push()
       }
  }
  }

}
  }
}
