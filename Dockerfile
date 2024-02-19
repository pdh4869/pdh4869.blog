FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx
RUN apt install -y git
RUN apt install -y cron

RUN rm -rf /var/www/html
RUN git clone https://github.com/pdh4869/pdh4869.blog.git /var/www/html

COPY pull.sh /var/www/html
COPY blog-pull-cronjob /etc/cron.d

RUN crontab /etc/cron.d/blog-pull-cronjob
RUN service cron start

CMD ["nginx", "-g", "daemon off;"]
