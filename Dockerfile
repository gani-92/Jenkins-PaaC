FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
RUN cp /tmp/workspace/CICD-scripted-working/gameoflife.war /usr/local/tomcat/webapps
