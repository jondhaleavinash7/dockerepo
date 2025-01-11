FROM centos:7
LABEL maintainer="avinash@gmail.com"
RUN yum install -y httpd 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


