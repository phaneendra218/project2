FROM phaneendraraju/ubuntuimage
MAINTAINER "Life Time Click's"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ADD apache-tomcat-8.5.38.tar.gz /root
ENV JAVA_HOME=/usr
COPY gamutkart.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash
WORKDIR /root/apache-tomcat-8.5.38
