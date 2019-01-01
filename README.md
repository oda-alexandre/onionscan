# ONIONSCAN

![onionscan](https://raw.githubusercontent.com/oda-alexandre/onionscan/master/img/logo-onionscan.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/onionscan/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BUILD DOCKER

[![onionscan docker build](https://img.shields.io/docker/build/alexandreoda/onionscan.svg)](https://hub.docker.com/r/alexandreoda/onionscan)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [onionscan](https://onionscan.org/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/onionscan/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --name onionscan alexandreoda/onionscan
```


## UTILISATION

Pour scanner un site en .onion copier/coller dans un terminal

```
sudo service tor start && sudo service privoxy start && onionscan --torProxyAddress=127.0.0.1:9050 http://lesite.onion
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/onionscan/blob/master/LICENSE)
