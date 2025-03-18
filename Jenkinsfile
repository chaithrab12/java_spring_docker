pipeline{
  agent none
  stages{
    stage('Checkout Code'){
        agent any
        steps{
            git credentialsId: '', 
            url: 'https://github.com/chaithrab12/java_spring_docker',
            branch: 'main' 
        }  
      } 
    
    stage('Build'){
       agent {
        docker { image 'maven:3.8.5-openjdk-17-slim'}
       } 
        steps{
           sh '''
           echo 'Build docker image'
           docker build -t javaspringapp .

           '''
        }  
      } 
    
    stage('Run App'){
        agent any
        steps{
           sh '''
           echo 'Run docker container'
           docker run -p 8880:880 javaspringapp
           
           '''
       }  
    }
  }
}
