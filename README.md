# java-devbox-with-gitblit-and-jenkins
Ubuntu server 14.04 based box with jenkins and gitblit installed on a tomcat server

This is a vanila installation after a vagrant up the urls are:

http://localhost:8080/gitblit-1.6.2/
http://localhost:8080/jenkins/

We are using tomcat7 and openjdk7, In /etc/environment two system properties have been defined to ease life ;<)
JAVA_HOME pointing to the jdk installation
TOMCAT_AUTODEPLOY_HOME pointing to the tomcat webapp folder where you can deploy jars

