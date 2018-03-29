# Measurement Kit CI docker images

Home of the docker files used to build the [bassosimone/mk-debian](
https://hub.docker.com/r/bassosimone/mk-debian) docker images used by
MK on Travis-CI.

```
docker build <dir>
docker images | head
docker tag <tag> bassosimone/mk-debian:<dir>
docker push bassosimone/mk-debian
```
