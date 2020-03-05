FROM golang:rc-stretch

LABEL authors https://www.oda-alexandre.com

ENV USER onionscan
ENV HOME /home/${USER}
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt-get update && apt-get install --no-install-recommends -y \
  sudo && \
  rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* INSTALL APP WITH GOLANG ******** \033[0m' && \
  go get github.com/s-rah/onionscan && \
  go install github.com/s-rah/onionscan

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD /bin/bash \