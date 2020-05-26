FROM alpine
COPY /webapp/target/*.war  /usr/local/tomcat/webapps/
