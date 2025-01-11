FROM centos:stream8
LABEL maintainer="avinash@gmail.com"

RUN yum clean all && \
    yum install -y httpd && \
    yum clean all

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


