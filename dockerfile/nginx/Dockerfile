FROM ubuntu:14.04
MAINTAINER For Bar <youngjun-cho@godo.co.kr>

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN chown -R www-data:www-data /var/lib/nginx

WORKDIR /etc/nginx
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
EXPOSE 443
