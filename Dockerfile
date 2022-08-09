FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
WORKDIR /tmp/workspace/CICD-scripted-working
RUN cp gameoflife.war /usr/local/tomcat/webapps
