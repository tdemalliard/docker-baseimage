# baseimage based onf phusion
# * apt-get cacher

# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:0.9.9

# Format: MAINTAINER Name <email@addr.ess>
MAINTAINER Jujubre <jujubre+docker@gmail.com>

#################################
#### apt-get cacher
RUN echo 'Acquire::http { Proxy "http://172.17.42.1:3142"; };' >> /etc/apt/apt.conf.d/01proxy && \
    apt-get -q update && \
    apt-get upgrade -qy
