FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
RUN cp /tmp/workspace/CICD-scripted/gameoflife-web/target/gameoflife.war /tmp/workspace/CICD-scripted
WORKDIR /tmp/workspace/CICD-scripted
ADD gameoflife.war /usr/local/tomcat/webapps
