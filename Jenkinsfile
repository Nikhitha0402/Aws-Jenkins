pipeline{
 agent any
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