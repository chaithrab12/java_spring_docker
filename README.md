# java_sping_docker 

A simple spring boot application with GET API for demo.

# Requirements:
* JDK 17
* Maven

# Getting Started:
* Check java version- we need java 17 or more
* Build the application
  mvn clean package
* Run the application
  java -jar target/app.jar

# Dockerfile:

* In this dockerfile I have used multi stage build
* First build the application using mvn clean packages.
* Second stage copy the build from previous stage and expose, run the application.
  This will reduce the image size

I have created two dockerfile , Dockerfile_old and Dockerfile to provide the comparision between the two version.
Dockerfile is the latest one used after optimization to reduce storage, improved performance and deployment time.

  Dockerfile_old:
  This is the initial dockerfile , using this maven:3.9.2-eclipse-temurin-17 and openjdk17-slim
  The docker image size was around 480MB

  We need to ​reducing the size of your Docker images is crucial for optimizing performance, reducing deployment times, and minimizing storage requirements.
  Additional strategies to further minimize Java application's Docker image size:​
  
  1.Image Selection :
  
    Your choice of base image has the most significant impact on your final image size.
    I have selected slim image
    
  2.Multi Stage Build :
  
    Build the application in one stage and copy the build jar to next stage.
    Distroless images contain only the essential components required to run your application, omitting unnecessary OS packages. This minimalism enhances security and reduces 
    image size.
    
  3.Minimize Docker Image Layers :
  
    Combine the commands whereever possible.
    
  4.Remove Unnecessary Files :
  
    The .dockerignore file works similarly to .gitignore, letting you exclude files and directories from the Docker build context. This not only speeds up the build process 
    but also prevents unnecessary or sensitive files from being included in your image.
    
  5.RUN mvn clean package -DskipTests :
  
    This will skip the test for faster build process.

  
