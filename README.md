# ONIONSCAN

<img src="https://onionscan.org/assets/img/logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [Use](#USE)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/onionscan/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/onionscan/commits/master)


## INTRODUCTION

Docker image of :

- [onionscan](https://onionscan.org/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/onionscan/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/onionscan/)


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -ti --rm --name onionscan -v ${HOME}:/home/onionscan alexandreoda/onionscan
```


## USE

Pour scanner a site in .onion copy/paste  in  a terminal

```
sudo service tor start && sudo service privoxy start && onionscan --torProxyAddress=127.0.0.1:9050 http://lesite.onion
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/onionscan/blob/master/LICENSE)
