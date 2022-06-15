#Example of DockerFile

FROM centos:7
LABEL description="deploy webserver through Docker"
MAINTAINER devopsadmin
RUN yum update -y && yum upgrade -y && yum install httpd -y
EXPOSE 80
ENV Loglevel Info
COPY ./files/index.html /var/www/html
USER root
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]
