FROM debian:testing-slim AS build
MAINTAINER Simone Basso (bassosimone@gmail.com)
RUN apt-get update
RUN apt-get install -y autoconf automake clang cmake g++ git iproute2          \
      libc++-dev libc++abi-dev libc-ares-dev libevent-dev libgeoip-dev         \
      libssl-dev libtool make python-pip wget
