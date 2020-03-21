FROM ubuntu:16.04

LABEL version="1.0"
LABEL maintainer="shindu666@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --yes software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update && apt-get install -y ethereum
RUN apt install -y nodejs npm
RUN apt install -y dos2unix
RUN apt install -y vim
RUN apt install -y sudo
RUN npm install -g ganache-cli

RUN adduser --disabled-login --gecos "" eth_user

COPY eth_common /home/eth_user/eth_common
COPY scripts /home/eth_user/scripts
RUN chown -R eth_user:eth_user /home/eth_user/eth_common
RUN chown -R eth_user:eth_user /home/eth_user/scripts



USER eth_user

WORKDIR /home/eth_user


RUN echo 'dos2unix /home/eth_user/scripts/makeunix.sh' 
ENTRYPOINT bash
VOLUME ["/home/eth_user/eth_common"]
