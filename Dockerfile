FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d
COPY webgl.conf default.conf

WORKDIR /webgl
COPY webgl/ .