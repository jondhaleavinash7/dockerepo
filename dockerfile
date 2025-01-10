FROM centos
MAINTAINER avinash@gmail.com
RUN yum install -y httpd
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
