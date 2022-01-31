FROM nginx:stable-alpine

ARG BOMI_SERVER_NAME
ENV BOMI_SERVER_NAME=$BOMI_SERVER_NAME

WORKDIR /etc/nginx/conf.d
COPY webgl.conf default.conf

WORKDIR /webgl
COPY webgl/ .
COPY set_server_name.sh .
RUN chmod +x set_server_name.sh && ./set_server_name.sh