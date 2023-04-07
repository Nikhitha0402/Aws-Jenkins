pipeline{
	agent any
	environment {
       PATH = "C:\\WINDOWS\\SYSTEM32"
    }
	stages{
		stage('Checkout'){
			steps{
				git branch: "main", url: 'https://github.com/Nikhitha0402/Aws-Jenkins.git'
			
			}
			
		}
		
		stage('Build'){
			steps{
				bat 'chmod a+x mvnw'
				bat './mvnw clean package -DskipTests=true' 
			}
			
			post{
				always{
					archiveArtifacts 'target/*.jar'
				}
			}
		}
		
		stage(DockerBuild){
			steps{
				bat 'docker build -t Nikhitha0402/Aws-Jenkins:latest .'
			}
		}
		
	}

}
