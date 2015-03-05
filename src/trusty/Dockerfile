FROM ubuntu:trusty

MAINTAINER Richard Collins <richardc@richardc.net>

# Bring all base packages up to date
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# Install some essential utilities
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  wget \
  unzip
 
