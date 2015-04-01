# Use phusion/baseimage as base image.
# See: http://phusion.github.io/baseimage-docker/#solution
FROM ubuntu:14.04.2
MAINTAINER James Humphrey <leafknode@gmail.com>

# update apt
RUN apt-get -y update

# install some common utils
RUN apt-get -y install wget
RUN apt-get -y install tar
RUN apt-get -y install make
RUN apt-get -y install pbuilder
RUN apt-get -y install python-mock
RUN apt-get -y install python-configobj
RUN apt-get -y install python-support
RUN apt-get -y install cdbs
RUN apt-get -y install python-pip
RUN apt-get -y install git
RUN apt-get -y install vim
RUN apt-get -y install curl
RUN apt-get -y install docker.io
RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common

# install oracle jdk 7
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get -y update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java6-installer

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
