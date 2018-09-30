# Measurement Kit CI docker images and scripts

Home of the docker files used to build the [bassosimone/mk-debian](
https://hub.docker.com/r/bassosimone/mk-debian) and
[bassosimone/mk-ubuntu](https://hub.docker.com/r/bassosimone/mk-ubuntu)
docker images used by MK on [Travis](https://travis-ci.org/).

## How to integrate into a project

```
git submodule add https://github.com/measurement-kit/docker-ci .ci/docker
```

## How to run from Travis CI

The following snippet shows how to configure a build that performs an `asan`
check for a project that is compiled using CMake:

```yaml
language: c++
matrix:
  include:
    - os: linux
      env: BUILD_TYPE="asan"
           CMAKE_OPTIONS="-DCMAKE_BUILD_TYPE=Release"
           CXXFLAGS="-fsanitize=address"
           LDFLAGS="-fsanitize=address"
      script:
        - ./.ci/docker/script/docker-run bassosimone/mk-ubuntu:rolling cmake
      services:
        - docker
      sudo: required
```

See [script/cmake](script/cmake) for more details.

## How to generate a new docker image

```
docker build --no-cache <dir>
docker images | head
docker tag <image-id> bassosimone/mk-ubuntu:<tag>
docker push bassosimone/mk-ubuntu
```
