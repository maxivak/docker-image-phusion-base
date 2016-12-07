# Overview

Docker image with Ubuntu 16.04.


* Based on phusion/baseimage:0.9.19 which is based on ubuntu:1604
* it adds some packages to make image chef-friendly

* phusion/baseimage - a minimal Ubuntu base image modified for Docker-friendliness



# Build


```
docker build -t my-base-phusion-1604 github.com/maxivak/docker-image-phusion-base.git

```

* or clone it and build locally

```
git clone https://github.com/maxivak/docker-image-phusion-base
cd docker-image-phusion-base
docker build -t my-base-phusion-1604 .

```


## check

* run temp container

```
docker run --rm -ti my-base-phusion-1604 bash
```

* ip route should work
```
ip route


# sample output

default via 172.17.0.1 dev eth0 
172.17.0.0/16 dev eth0  proto kernel  scope link  src 172.17.0.9 

```

it is needed for Chef provisioning.
