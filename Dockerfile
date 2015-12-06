FROM nginx:1.9

COPY sike.io.conf /etc/nginx/conf.d/sike.io.conf

VOLUME ./log /var/log/nginx