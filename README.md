# Measurement Kit common CI scripts

This repository contains the Docker image we use for running CI:
[bassosimone/mk-debian](https://hub.docker.com/r/bassosimone/mk-debian).
This allows us to reproduce Travis builds locally.

## How to generate a new docker image

```
docker build --no-cache debian
docker tag `docker images | head | awk '{print $3}'|sed -n 2p` \
    bassosimone/mk-debian
docker push bassosimone/mk-debian
```

Before v0.2.6, we used to push `bassosimone/mk-debian:testing`. Now we
do not push any tag, hence we default to `latest`. We will keep around the
`testing` image for some more time, until all repositories using this
repostitory have been updated. Please, use the `latest` tag in new code.
