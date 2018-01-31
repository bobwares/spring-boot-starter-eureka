# Eureka Service Registry
  [Reference](https://spring.io/guides/gs/service-registration-and-discovery/#initial)

  The Eureka Service Registry is implemented as a Spring Boot application.  
  - All that is required is the following:
    - add Spring Cloud’s @EnableEurekaServer annotation to Java Config class.
    - specify a port in the application.properties file: server.port=8761
    - add the following dependency to the pom.xml.
        ~~~
            <!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-starter-eureka-server -->
            <dependency>
                <groupId>org.springframework.cloud</groupId>
                <artifactId>spring-cloud-starter-eureka-server</artifactId>
                <version>1.4.2.RELEASE</version>
            </dependency>
        ~~~
    
# Starting the Server

 [Reference](https://docs.spring.io/spring-boot/docs/current/reference/html/using-boot-running-your-application.html)
 
 - Using the Maven plugin
     ~~~
     $ mvn spring-boot:run
     ~~~

# Docker 

- Install Docker.

  Here are the [Instructions](https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows) from the Docker site.


- In a Docker terminal window change the directory to the root of this project execute the following command:
  - Build docker image
  ~~~~
     docker build -f Dockerfile -t eureka-server .
  ~~~~
      
  -Start docker container
  ~~~~
    docker run -d -p 8761:8761 -it eureka-server
  ~~~~
  
  This will create and instantiate a Docker image that has a running installation of Eureka Discovery Server.
  

# View instances currently registered with server.

  Point browser to url: http://localhost:8761.
  