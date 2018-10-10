# debian squeeze + java 1.7.0_80

FROM debian:wheezy

MAINTAINER Edson Ma <edsonma@gmail.com>

RUN apt-get update \
	&& apt-get install -y curl tar unzip \
        && curl -s -k -L -C - https://gitlab.seatecnologia.com.br/edson.ma/sea-resources/blob/master/java/jdk-7u80-linux-x64.tar.gz | tar zxvf - -C /opt \
        	&& mv /opt/jdk1.7.0_80/jre /opt/jre1.7.0_80 \
        && mv /opt/jdk1.7.0_80/lib/tools.jar /opt/jre1.7.0_80/lib/ext \
        && rm -Rf /opt/jdk1.7.0_80 \
        && ln -s /opt/jdk1.7.0_80 /opt/java

# Set JAVA_HOME
ENV JAVA_HOME /opt/java
