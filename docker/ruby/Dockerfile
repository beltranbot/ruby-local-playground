FROM ubuntu:20.04

RUN apt update && apt install ruby -y

RUN useradd rubyuser
USER rubyuser

WORKDIR /usr/src/app
