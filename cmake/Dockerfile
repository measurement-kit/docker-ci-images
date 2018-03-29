FROM debian:stable-slim AS build
MAINTAINER Simone Basso (bassosimone@gmail.com)
RUN apt-get update
RUN apt-get install -y cmake g++ git libc-ares-dev libevent-dev                \
      libgeoip-dev libssl-dev make wget iproute2
