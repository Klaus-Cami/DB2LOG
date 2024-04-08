FROM centos:latest
MAINTAINER roby2693@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages254/phoyogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["usr/sbin/gttpd", "-D", "FOREGROUND"]
EXPOSE 80 22