FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
RUN mv /tmp/workspace/CICD-scripted/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps


