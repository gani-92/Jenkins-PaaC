FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
COPY /opt/tomcat/gameoflife.war .
EXPOSE 8081
