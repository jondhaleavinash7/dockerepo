FROM centos:latest
LABEL maintainer="avinash@gmail.com"
RUN yum install -y httpd
EXPOSE 80

