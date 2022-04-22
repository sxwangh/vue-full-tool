# FROM nginx
FROM iregistry.baidu-int.com/acg-acloud/nginx:1.21-alpine
USER root
WORKDIR /var/www/dist

COPY output/dist /var/www/dist
COPY output/entrypoint.sh /var/www/
COPY output/nginx.conf /var/www/
COPY output/nginx.conf.template /var/www/

RUN cp -rf /var/www/nginx.conf.template /etc/nginx/nginx.conf.template ;\
    cp -rf /var/www/nginx.conf /etc/nginx/nginx.conf ;\
    cp -rf /var/www/entrypoint.sh /entrypoint.sh ;\
    chmod +x /entrypoint.sh ;\
    rm -rf /var/www/dist/dist ;\
    rm -rf /etc/nginx/conf.d/default.conf ;\
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
HEALTHCHECK CMD curl -sS http://localhost:80

# 赋予shell文件可执行权限
#RUN chmod +x entrypoint.sh
#ENTRYPOINT ["./entrypoint.sh"]
ENTRYPOINT ["sh", "./entrypoint.sh"]
