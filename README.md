# Docker base image

## Image build info
* phusion/basimage:0.9.16 [github](https://github.com/phusion/baseimage-docker)
 * stackbrew/ubuntu:14.04
 * a correct init process
 * Fixes APT incompatibilities with Docker. See https://github.com/dotcloud/docker/issues/1024.
 * syslog-ng
 * logrotate
 * sshserver, default is disabled.
 * cron
 * runit [ref](http://smarden.org/runit/)
 * setuser
* apt-cacher-ng set to 172.17.42.1 [wiki](http://www.cag.umontreal.ca/wiki/index.php?title=Docker:_apt-cache)
* time set to local: env TZ America/Montreal

## Build
```
docker build --tag [username]/baseimage:latest .
docker tag [username]/baseimage:latest [username]/baseimage:0.9.16
```
Version tag follow phusion/baseimage tag. Version 0.9.16 is the current latest version.

## Use
Include the image in your next Dockerfile:
```
FROM [username]/baseimage
```