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
    stage('Compilation & Package'){
       steps{
          bat 'mvn compile package'
          
      }
      }
   stage('deployment'){
    steps{
     bat 'java -jar target/Student-Demo.jar'
    }
   }
   }
  }
