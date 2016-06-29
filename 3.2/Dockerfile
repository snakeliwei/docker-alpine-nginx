FROM alpine:3.2
MAINTAINER Lyndon Li <snakeliwei@qq.com>

RUN apk --update add nginx tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && sed -i 's|#user  nobody;|user root;|g' /etc/nginx/nginx.conf \
    && sed -i 's|#pid        run/nginx.pid;|pid /var/run/nginx.pid;|g' /etc/nginx/nginx.conf

EXPOSE 80 433

CMD ["nginx", "-g", "daemon off;"]
