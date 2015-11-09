# Docker base image

## Image build info
* phusion/basimage:0.9.17 [github](https://github.com/phusion/baseimage-docker)
 * stackbrew/ubuntu:14.04
 * a correct init process
 * Fixes APT incompatibilities with Docker. See https://github.com/dotcloud/docker/issues/1024.
 * syslog-ng
 * logrotate
 * sshserver, default is disabled.
 * cron
 * runit [ref](http://smarden.org/runit/)
 * setuser
* apt-cacher-ng set to 172.17.0.1 [wiki](http://www.cag.umontreal.ca/wiki/index.php?title=Docker:_apt-cache)
* time set to local: env TZ America/Montreal

## Build
```bash
docker build --tag tdemalliard/baseimage:latest .
docker tag tdemalliard/baseimage:latest tdemalliard/baseimage:0.9.17
```
Version tag follow phusion/baseimage tag. Version 0.9.17 is the current latest version (as of 9 mov 2015)

## Use
Include the image in your next Dockerfile:
```bash
FROM tdemalliard/baseimage
```