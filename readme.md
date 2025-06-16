#### Build java
    mvn clean package


##### Build docker file using wildfly
    docker build -t abdaziz/simple-web-app:v2 .

##### Build docker file using jboss
    docker build -t abdaziz/simple-web-jboss-app:v1 .

#### Push on docker repository using wildfly
    docker push abdaziz/simple-web-app:v2

##### Push on docker repository using jboss
    docker push abdaziz/simple-web-jboss-app:v1

