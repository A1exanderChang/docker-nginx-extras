FROM ubuntu:23.10
MAINTAINER Alexander Chang <1264064757@qq.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y nginx-extras
RUN mkdir -p /home/video
ADD ./default /etc/nginx/sites-available/default
CMD ["nginx", "-g", "daemon off;"]