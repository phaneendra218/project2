#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then
        sshpass -p "tomcat" scp target/gamutkart.war tomcat@172.17.0.2:/home/tomcat/softs/apache-tomcat-8.5.38/webapps
        sshpass -p "tomcat" ssh tomcat@172.17.0.2 "JAVA_HOME=/home/tomcat/softs/jdk1.8.0_201" "/home/tomcat/softs/apache-tomcat-8.5.38/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT" ];then
        sshpass -p "tomcat" scp target/gamutkart.war tomcat@172.17.0.2:/home/tomcat/softs/apache-tomcat-8.5.38/webapps
        sshpass -p "tomcat" ssh tomcat@172.17.0.2 "JAVA_HOME=/home/tomcat/softs/jdk1.8.0_201" "/home/tomcat/softs/apache-tomcat-8.5.38/bin/startup.sh"

echo "deployment has been done!"
fi

