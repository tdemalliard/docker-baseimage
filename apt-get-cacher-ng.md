# apt-cache with docker

## Intro
A apt-cache proxy allow to cache debian packages as they are requested for installation with this proxy. The great benefit is that one do not need to download again the packages when rebuilding the image from the dockerfile, or building a derived image.

## installation
The proxy use this image: https://github.com/sameersbn/docker-apt-cacher-ng. Pull and run it with this single command:
```
docker run --name='apt-cacher-ng' -d -p 172.17.42.1:3142:3142 sameersbn/apt-cacher-ng
```
The 3142 port is bind to your docker interface, internal to your server. Now, all queries with address 172.17.42.1:3142 will use this apt proxy cache.

## Use
Add the proxy in the dockerfile. Write this line before any apt-* instruction:
```
RUN echo 'Acquire::http { Proxy "http://172.17.0.1:3142"; };' >> /etc/apt/apt.conf.d/01proxy
```