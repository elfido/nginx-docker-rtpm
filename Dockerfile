FROM centos:centos7
MAINTAINER Fidencio Garrido
RUN yum -y upgrade && yum -y install initscripts openssl wget tar gcc make git
WORKDIR /home
RUN wget http://nginx.org/download/nginx-1.8.0.tar.gz
RUN git clone https://github.com/arut/nginx-rtmp-module
RUN ./configure
RUN make
RUN install
EXPOSE 1935