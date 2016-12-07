# Overview

Docker image with Ubuntu 16.04.

* Based on phusion/baseimage:0.9.19 which is based on ubuntu:1604

* phusion/baseimage - a minimal Ubuntu base image modified for Docker-friendliness



# Build


```
docker build https://github.com/docker/rootfs.git#container:docker

```

* or clone it and build locally

* it will build Docker image 'base-phusion-1604'


!!! build phusion-baseimage first

```
cd phusion-baseimage/image
docker build -t my-phusion-baseimage .
docker tag my-phusion-baseimage:latest my-phusion-baseimage:0.9.19

```

* build

docker build -t base-phusion-1604 .


* check

* sshd should work

ps -ef | grep ssh

root@6bba42c28066:/# ps -fe | grep ssh                                                                                                                                                                                                                     
root        80    79  0 12:43 ?        00:00:00 runsv sshd
root        84    80  0 12:43 ?        00:00:00 /usr/sbin/sshd -D
root       108    92  0 12:44 ?        00:00:00 grep --color=auto ssh
