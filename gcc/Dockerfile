FROM debian:stable-slim AS build
MAINTAINER Simone Basso (bassosimone@gmail.com)
RUN apt-get update
RUN apt-get install -y autoconf automake g++ git libc-ares-dev libevent-dev    \
      libgeoip-dev libssl-dev libtool make valgrind wget iproute2
