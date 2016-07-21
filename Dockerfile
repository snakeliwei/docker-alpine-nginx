FROM alpine
MAINTAINER Lyndon Li <snakeliwei@qq.com>

RUN apk --update add nginx tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && sed -i 's|#user  nobody;|user root;|g' /etc/nginx/nginx.conf \
    && sed -i 's|#pid        run/nginx.pid;|pid /var/run/nginx.pid;|g' /etc/nginx/nginx.conf
    
    # forward request and error logs to docker log collector
	&& ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log
    
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
