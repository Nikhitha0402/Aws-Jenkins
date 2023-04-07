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
				sh 'chmod a+x mvnw'
				sh './mvnw clean package -DskipTests=true' 
			}
			
			post{
				always{
					archiveArtifacts 'target/*.jar'
				}
			}
		}
		
		stage(DockerBuild){
			steps{
				sh 'docker build -t Nikhitha0402/Aws-Jenkins:latest .'
			}
		}
		
	}

}
