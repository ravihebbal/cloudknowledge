FROM centos:latest
MAINTAINER ravihebbal07@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/blessed.zip /var/www.html/
WORKDIR /var/www/html/
RUN unzip blessed.zip
RUN cp -rvf blessed/* .
RUN rm -rf blessed.zip blessed
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
