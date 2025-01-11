FROM ubuntu
LABEL Name="Avinash"
LABEL Mno="9370765489"
LABEL Email-id="avia@gmail.com"
ENV Name="Avinash"
ENV Paswword="Avinash@1234"
RUN useradd $Name && echo "$Name : $Password" 1 chpasswd
RUN touch abc{1..10}
RUN touch xyz{1..10}
RUN touch xyz1{1..10}
RUN touch abc1{1..10}
RUN apt-get clean all && apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y tree
RUN apt-get install -y python
CMD ["tree"]
