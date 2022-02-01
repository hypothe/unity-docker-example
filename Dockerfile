FROM ubuntu/nginx

ARG BOMI_SERVER_NAME
ENV BOMI_SERVER_NAME=$BOMI_SERVER_NAME


ARG BOMI_SERVER_PORT
ENV BOMI_SERVER_PORT=$BOMI_SERVER_PORT


WORKDIR /etc/nginx/conf.d
COPY webgl.conf default.conf

WORKDIR /webgl
COPY webgl/ .
COPY set_server_name.sh .
RUN chmod +x set_server_name.sh && ./set_server_name.sh

RUN apt-get update && apt-get install -y arp-scan && arp-scan -l