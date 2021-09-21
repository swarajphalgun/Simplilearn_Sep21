
FROM ubuntu

RUN apt-get update

RUN apt-get install -y nginx

COPY index.html /var/www/html/index.html

EXPOSE 80

ENTRYPOINT nginx

CMD [-g 'daemon off;']
