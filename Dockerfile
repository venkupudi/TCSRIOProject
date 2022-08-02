FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install vim -y
RUN apt-get install build-essential -y
RUN apt-get install default-jdk -y
RUN apt-get install default-jre -y
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget
RUN mkdir /usr/local/tomcat
RUN wget http://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.81/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
