FROM centos
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y
RUN yum -y install java
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat 
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache*/* /opt/tomcat
RUN mv /tmp/workspace/CICD-scripted/gameoflife-web/target/gameoflife.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
