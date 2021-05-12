FROM nginx

COPY docker/conf/nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker/ssl /etc/nginx/https
COPY docker/entrypoint.sh entrypoint.sh

ADD dist /var/www/dist


ENTRYPOINT ["./entrypoint.sh"]

HEALTHCHECK CMD curl -sS http://localhost:80
