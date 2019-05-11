FROM node:6-alpine

MAINTAINER Néstor Coppi <nestorcoppi@gmail.com>

RUN adduser --shell /bin/false --gecos "" --disabled-password logio

RUN apk add --update python2 python2-dev make g++

RUN export USER=logio; export HOME=/home/logio; npm install -g log.io --user "logio"

ENV HOME /home/logio
ENV USER logio
WORKDIR /home/logio
EXPOSE 28778 28778

RUN mkdir -p /home/logio/.log.io/

ADD start.sh /start.sh

RUN chmod 777 /start.sh

USER logio

CMD ["/start.sh"]
