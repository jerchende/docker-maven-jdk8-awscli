FROM openjdk:8-jdk-alpine

ENV LANG=C.UTF-8
ENV JAVA_VERSION=8 JAVA_UPDATE=131 JAVA_BUILD=25 JAVA_HOME=/usr/lib/jvm/default-jvm

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN apk update
RUN apk add openrc
RUN apk add bash
RUN apk add python
RUN apk add py-pip
RUN apk add maven
RUN apk add docker
RUN pip install --upgrade pip awscli awsebcli
