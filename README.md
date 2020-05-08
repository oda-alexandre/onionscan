# ONIONSCAN

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904463/urzL3TmF_400x400.jpg)

## INDEX

- [ONIONSCAN](#onionscan)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [USE](#use)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/onionscan/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/onionscan/commits/master)

## INTRODUCTION

Docker image of :

- [onionscan](https://onionscan.org/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/onionscan/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/onionscan/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -ti --rm \
--name onionscan \
-v ${HOME}:/home/onionscan \
alexandreoda/onionscan
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  onionscan:
    container_name: onionscan
    image: alexandreoda/onionscan
    restart: no
    privileged: false
    volumes:
      - "${HOME}:/home/onionscan"
```

## USE

For scann a site in .onion copy/paste  in  a terminal

```\
sudo service tor start && sudo service privoxy start && onionscan --torProxyAddress=127.0.0.1:9050 http://lesite.onion
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/onionscan/blob/master/LICENSE)
