FROM tomcat
RUN mkdir /usr/local/tomcat
COPY /var/lib/jenkins/workspace/deploy/webapp.war  /usr/local/tomcat/webapps
EXPOSE 8080

