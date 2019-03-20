#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then
        sshpass -p "tomcat" scp /home/node2/projects/workspace/sampleFS/target/gamutkart.war tomcat@172.17.0.2:/home/tomcat/softs/apache-tomcat-8.5.38/webapps

elif  [ $ENVIRONMENT = "SIT" ];then
        sshpass -p "node1" scp /home/node2/projects/workspace/sampleFS/target/gamutkart.war node1@172.17.0.3:/home/node1/softs/apache-tomcat-8.5.38/webapps

echo "deployment has been done!"
fi

