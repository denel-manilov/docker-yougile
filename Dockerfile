FROM ubuntu:xenial

WORKDIR /yougile

ADD https://dist.yougile.com/linux/latest/yougile.tar.gz /tmp/yougile.tar.gz

RUN tar xf /tmp/yougile.tar.gz -C / \
	&& rm -rf /tmp/*

COPY conf.json /yougile/conf.json

CMD "/yougile/server"
