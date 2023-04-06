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
          sh "./mvnw clean install -DskipTests"
          
      }
      }
      
   }
  }
