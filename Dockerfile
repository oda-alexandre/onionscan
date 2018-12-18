FROM golang:rc-stretch

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
tor \
privoxy

# INSTALLATION DE L'APPLICATION VIA GOLANG
RUN go get github.com/s-rah/onionscan && \
go install github.com/s-rah/onionscan

# AJOUT UTILISATEUR
RUN useradd -d /home/onionscan -m onionscan && \
passwd -d onionscan && \
adduser onionscan sudo

# SELECTION UTILISATEUR
USER onionscan

# CONFIGURATION DE TOR PRIVOXY
RUN sudo rm -f /etc/privoxy/config && \
sudo rm -f /etc/tor/torcc && \
echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config && \
echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD /bin/bash
