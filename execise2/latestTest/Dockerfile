############################################################
# Dockerfile to build simple php server container
# Based on Ubuntu
############################################################

# Source image 
FROM ubuntu:16.04

# Manteiner identity
MAINTAINER damian.velazquez@globant.com

# Update the repository sources list and all the packages
RUN apt-get update && apt-get upgrade -y

# Install useful packages
RUN apt-get install -y vim ssh htop curl software-properties-common

# Start ansible resources installation
RUN apt-add-repository ppa:ansible/ansible -y
RUN apt-get update
RUN apt-get install -y ansible


