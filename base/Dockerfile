FROM ubuntu:artful AS build
MAINTAINER Simone Basso (bassosimone@gmail.com)
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y cmake g++ git libc-ares-dev libevent-dev                \
      libgeoip-dev libssl-dev make wget iproute2
