FROM golang:rc-stretch

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update

RUN apt-get install --no-install-recommends -y sudo tor privoxy

RUN go get github.com/s-rah/onionscan
RUN go install github.com/s-rah/onionscan

RUN apt-get --purge autoremove -y

RUN useradd -d /home/onionscan -m onionscan
RUN passwd -d onionscan
RUN adduser onionscan sudo

USER onionscan

RUN sudo rm -f /etc/privoxy/config
RUN sudo rm -f /etc/tor/torcc
RUN echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

CMD /bin/bash
