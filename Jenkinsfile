pipeline{
 agent any
 environment {
       PATH = "C:\\WINDOWS\\SYSTEM32"
    }
tools{
maven 'Maven'
jdk 'Nikhitha_jdk'
}
  stages{
  stage('Clean'){
  steps{
  bat 'mvn clean'
  }
  }
    stage('Compilation'){
       steps{
          bat 'mvn compile'
          
      }
      }
   stage('Build') {
            steps {
                sh 'make' 
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }
        }
  
     stage('Deploy') {
            when {
              expression {
                currentBuild.result == null || currentBuild.result == 'SUCCESS' 
              }
            }
            steps {
                bat 'make publish'
            }
        }
    }
  }
