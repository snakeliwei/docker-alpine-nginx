FROM alpine
MAINTAINER Lyndon Li <snakeliwei@qq.com>

RUN apk --update add nginx tzdata\
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    && apk del tzdata
    && rm -rf /var/cache/apk/*

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
