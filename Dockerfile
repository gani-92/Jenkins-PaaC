FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
EXPOSE 8081
RUN cp /tmp/workspace/Scripted-PaaC/gameoflife-web/target/gameoflife.war .
