FROM centos

MAINTAINER praveen

RUN yum install vim net-tools -y \
    && yum install httpd -y 


COPY index.html /var/www/html/

CMD ["httpd","-D","FOREGROUND"]
