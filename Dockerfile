FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
//WORKDIR /tmp/workspace/CICD-scripted
COPY /tmp/workspace/CICD-scripted/gameoflife.war /usr/local/tomcat/webapps
