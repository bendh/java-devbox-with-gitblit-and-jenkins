#!/bin/bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -y
sudo echo 'JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/' > /etc/environment
sudo echo 'TOMCAT_AUTODEPLOY_HOME=/var/lib/tomcat7/webapps' > /etc/environment  
source /etc/environment
sudo apt-get install tomcat7 tomcat7-admin -y
wget http://dl.bintray.com/gitblit/releases/gitblit-1.6.2.war && mv  gitblit-1.6.2.war $TOMCAT_AUTODEPLOY_HOME/gitblit.war
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war && mv jenkins.war $TOMCAT_AUTODEPLOY_HOME
sudo mkdir /usr/share/tomcat7/.jenkins
sudo chmod a+rwx /usr/share/tomcat7/.jenkins

