# Measurement Kit artful docker images

This repository contains the docker files used to build the
[bassosimone/mk-artful](https://hub.docker.com/r/bassosimone/mk-artful/)
docker images used by MK on Travis.

```
docker build -t latest <dir>
docker images
docker tag <tag> bassosimone/mk-artful:<dir>
docker push bassosimone/mk-artful
```
