pipeline{
   agent {
    docker {
      image 'abhishekf5/maven-abhishek-docker-agent:v1'
       args '-v $HOME/.m2:/root/.m2'
    }
  }
  
  stages{
    stage('Checkout Code'){
        steps{
            git url: 'https://github.com/chaithrab12/java_spring_docker',
            branch: 'dev' 
        }  
      } 
    
    stage('Build'){
        steps{
           sh '''
           echo 'Build docker image'
           docker build -t javaspringapp .

           '''
        }  
      } 
    
    stage('Run App'){
        steps{
           sh '''
           echo 'Run docker container'
           docker run -p 8880:880 javaspringapp
           
           '''
       }  
    }
  }
}
