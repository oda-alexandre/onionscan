# **<center>OnionScan</center>**


**INTRODUCTION**

*onionscan https://onionscan.org/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    docker run -ti --name onionscan alexandreoda/onionscan /bin/bash


**UTILISATION**

copier/coller dans un terminal :

    sudo service tor start && sudo service privoxy start && onionscan --torProxyAddress=127.0.0.1:9050 http://lesite.onion


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/onionscan/blob/master/LICENSE)
