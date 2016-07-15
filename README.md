# Docker GC

This docker image contains [`docker-gc`](https://github.com/docwhat/docker-gc),
a garbage collector for Docker images.

## Usage

The docker container must be able to talk to the docker daemon.  If you are
using a Unix socket, then you can probably get away with `-v
/var/run/docker.sock:/var/run/docker.sock:rw`.

Inside the container, `docker-gc` runs as root, so the permissions of the Unix
socket shouldn't matter unless you're using SELinux.

Example:

``` sh
$ docker run \
  --restart unless-stopped \
  --detach \
  --volume=/var/run/docker.sock:/var/run/docker.sock:rw \
  --name=docker-gc \
  docwhat/docker-gc:latest --verbosity=9 --sweeper-time=5m
```

## Source

* [`docker-gc`](https://github.com/docwhat/docker-gc)
* [`Dockerfile`](https://github.com/docwhat/docker-gc-docker)
