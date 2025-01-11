FROM centos:7
LABEL maintainer="avinash@gmail.com"

# Update YUM repositories and install httpd
RUN yum clean all && \
    yum -y update && \
    yum -y install httpd && \
    yum clean all

# Expose port 80
EXPOSE 80

# Start the Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
