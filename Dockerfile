##########From Base Ubuntu Image from Docker Hub##################
FROM ubuntu:18.04
########### Updating the package repository #################
RUN apt-get update
############Installing Git , VIM , Build Essential ###################
RUN apt-get install git -y
RUN apt-get install vim -y
RUN apt-get install build-essential -y
###############Installing the JDK and JRE ( Java) ######################
RUN apt-get install default-jdk -y
RUN apt-get install default-jre -y
################Updating the Package Repository #########################
RUN apt-get -y update && apt-get -y upgrade
##################Installing Wget ###########################
RUN apt-get -y install wget
#####################Installing Apache Tomcat version 8 #############################3
RUN mkdir /usr/local/tomcat
RUN wget http://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.81/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run

