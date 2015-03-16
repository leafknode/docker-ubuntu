# Use phusion/baseimage as base image.
# See: http://phusion.github.io/baseimage-docker/#solution
FROM ubuntu:14.04.2
MAINTAINER James Humphrey <james.humphrey@activision.com>

# update apt
RUN apt-get -y update

# install some common utils
RUN apt-get -y install wget tar make pbuilder python-mock python-configobj python-support cdbs python-pip git vim

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
