pipeline{
 agent any{
  stages{
  stage('Checkout'){
  steps{
  git branch:"main",url:'https://github.com/Nikhitha0402/Aws-Jenkins.git'
  echo 'Hello Checkout'
  }
  }
    stage('Build'){
       steps{
          sh 'a+x mvnw'
          sh './mvnw clean package -DskipTests=true'
      }
      post{
      always{
        archieveArtifact 'target/*.jar'
           }
        }
     }
   }
  }