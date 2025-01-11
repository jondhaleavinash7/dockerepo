FROM ubuntu
#LABEL Name="Avinash"
MAINTAINER Name="Avinash"
LABEL Mno="9370765489"
LABEL Email-id="avia@gmail.com"
ENV Name=Avinah
ENV Pass=Avinash@1234
RUN useradd $Name
RUN echo "$Name:$Pass" | chpasswd
RUN touch abc{1..10}
RUN touch xyz{1..10}
RUN touch xyz1{1..10}
RUN touch abc1{1..10}
RUN apt-get clean all && apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y tree
RUN apt-get install -y python3
RUN apt-get install -y openssh-client
RUN apt-get install -y openssh-server
RUN apt-get install -y unzip
#RUN mkdir -p /var/run/sshd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip  /var/www/html/
ADD unzip inance.zip
RUN cp -rvf inance-html/* .
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
