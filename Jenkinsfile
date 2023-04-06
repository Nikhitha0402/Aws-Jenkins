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
   stage('deployment'){
    steps{
     bat 'mvn spring-boot:run'
    }
   }
   }
  }
