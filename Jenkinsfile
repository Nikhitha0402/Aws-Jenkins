pipeline{
 agent any
  stages{
  stage('Clean'){
  steps{
  bat 'mvn clean'
  }
  }
    stage('Compile'){
       steps{
          bat 'mvn compile'
          
      }
      }
      stage('Package Archieve')
      {
      steps{
      bat 'mvn package'
        }
     }
   }
  }