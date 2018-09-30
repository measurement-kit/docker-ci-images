FROM ubuntu:rolling AS build
MAINTAINER Simone Basso (bassosimone@gmail.com)
RUN apt-get update
RUN apt-get install -y autoconf automake clang cmake curl g++ git iproute2     \
      libc++-dev libc++abi-dev libc-ares-dev libcurl4-openssl-dev libevent-dev \
      libgeoip-dev libssl-dev libtool make ninja-build python-pip              \
      python-virtualenv wget
