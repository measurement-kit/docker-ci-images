# Measurement Kit CI docker images

Home of the docker files used to build the [bassosimone/mk-debian](
https://hub.docker.com/r/bassosimone/mk-debian) docker images used by
MK on Travis-CI.

```
docker build <dir>     # or docker build --no-cache <dir>
docker images | head
docker tag <image-id> bassosimone/mk-debian:<tag>
docker push bassosimone/mk-debian
```
