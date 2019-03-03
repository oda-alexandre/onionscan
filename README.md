# ONIONSCAN

[![dockeri.co](https://dockeri.co/image/alexandreoda/onionscan)](https://hub.docker.com/r/alexandreoda/onionscan)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/onionscan.svg)](https://microbadger.com/images/alexandreoda/onionscan)
[![size](https://images.microbadger.com/badges/image/alexandreoda/onionscan.svg)](https://microbadger.com/images/alexandreoda/onionscan")
[![build](https://img.shields.io/docker/build/alexandreoda/onionscan.svg)](https://hub.docker.com/r/alexandreoda/onionscan)
[![automated](https://img.shields.io/docker/automated/alexandreoda/onionscan.svg)](https://hub.docker.com/r/alexandreoda/onionscan)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [onionscan](https://onionscan.org/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/onionscan/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --rm --name onionscan -v ${HOME}:/home/onionscan alexandreoda/onionscan
```


## UTILISATION

Pour scanner un site en .onion copier/coller dans un terminal

```
sudo service tor start && sudo service privoxy start && onionscan --torProxyAddress=127.0.0.1:9050 http://lesite.onion
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/onionscan/blob/master/LICENSE)
