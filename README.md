# ONIONSCAN

<img src="https://onionscan.org/assets/img/logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/onionscan/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/onionscan/commits/master)


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
