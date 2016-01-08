FROM alpine:3.2
MAINTAINER Lyndon Li <snakeliwei@qq.com>

RUN apk --update add nginx \
    && rm -rf /var/cache/apk/*

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
