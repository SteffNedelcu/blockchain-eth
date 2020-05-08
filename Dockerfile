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

RUN adduser --disabled-login --gecos "" ethuser

COPY ethdata /home/ethuser/ethdata
COPY scripts /home/ethuser/scripts
RUN chown -R ethuser:ethuser /home/ethuser/ethdata
RUN chown -R ethuser:ethuser /home/ethuser/scripts



USER ethuser

WORKDIR /home/ethuser


RUN echo 'dos2unix /home/ethuser/scripts/makeunix.sh' 
ENTRYPOINT bash
VOLUME ["/home/ethuser/ethdata"]
