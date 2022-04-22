# FROM nginx
FROM quay.io/centos7/nginx-116-centos7

COPY docker/conf/nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker/ssl /etc/nginx/https
COPY docker/entrypoint.sh entrypoint.sh

ADD dist /var/www/dist


# 赋予shell文件可执行权限
#RUN chmod +x entrypoint.sh
#ENTRYPOINT ["./entrypoint.sh"]
ENTRYPOINT ["sh", "./entrypoint.sh"]

HEALTHCHECK CMD curl -sS http://localhost:80
