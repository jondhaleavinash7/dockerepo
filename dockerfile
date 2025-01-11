FROM centos
LABEL maintainer="avinash@gmail.com"
RUN yum -y update && \
    yum -y install httpd 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
