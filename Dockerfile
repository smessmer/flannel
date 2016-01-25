FROM debian:jessie
COPY . /go/src
RUN apt-get update -qq && apt-get install -y iptables linux-libc-dev golang gcc
RUN cd /go/src/ && ./build
RUN mkdir /opt/bin && ln -s /go/src/bin/flanneld /opt/bin/flanneld
