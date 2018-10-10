# debian squeeze + java 1.8.0_162

FROM debian:wheezy-slim

MAINTAINER Edson Ma <edsonma@gmail.com>

RUN apt-get update \
	&& apt-get install -y curl tar unzip \
        && curl -s -k -L -C - https://gitlab.seatecnologia.com.br/edson.ma/sea-resources/blob/master/java/jdk-8u162-linux-x64.tar.gz | tar zxvf - -C /opt \
        	&& mv /opt/jdk1.8.0_162/jre /opt/jre1.8.0_162 \
        && mv /opt/jdk1.8.0_162/lib/tools.jar /opt/jre1.8.0_162/lib/ext \
        && rm -Rf /opt/jdk1.8.0_162 \
        && ln -s /opt/jdk1.8.0_162 /opt/java

# Set JAVA_HOME
ENV JAVA_HOME /opt/java
