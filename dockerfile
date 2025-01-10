FROM centos
MAINTAINER avinash@gmail.com
RUN yum install -y httpd\
       zip\
       unzip\
ADD https://www.free-css.com/free-css-templates/page296/neogym
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
