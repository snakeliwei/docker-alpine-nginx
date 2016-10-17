FROM alpine:3.3
MAINTAINER Lyndon Li <snakeliwei@qq.com>

RUN apk --update add nginx tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    # forward request and error logs to docker log collector
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
    
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
