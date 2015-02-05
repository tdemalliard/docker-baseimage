# baseimage based on phusion/baseimage with
# * apt-get cacher
# * local time set

# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:0.9.16
MAINTAINER Thibault de Malliard <tdemalliard+docker@gmail.com>

# Set correct time.
ENV TZ America/Montreal

#################################
#### apt-get cacher
RUN echo 'Acquire::http { Proxy "http://172.17.42.1:3142"; };' >> /etc/apt/apt.conf.d/01proxy && \
    apt-get -q update && \
    apt-get upgrade -qy
