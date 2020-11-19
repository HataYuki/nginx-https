FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install nginx curl nano -y
EXPOSE 80 443
ADD cert/sample.local.pem /etc/nginx/
ADD cert/sample.local-key.pem /etc/nginx/
ADD ssl.conf /etc/nginx/sites-enabled
ENTRYPOINT nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
