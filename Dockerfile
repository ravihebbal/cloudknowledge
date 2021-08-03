FROM centos:latest
MAINTAINER ravihebbal@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/wise.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip wise.zip
RUN cp -rvf wise/* .
RUN rm -rf wise.zip wise
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
