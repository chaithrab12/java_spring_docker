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

#Dockerfile:

* In this dockerfile I have used multi stage build
* First build the application using mvn clean packages.
* Second stage copy the build from previous stage and expose, run the application.
  This will reduce the image size

  
