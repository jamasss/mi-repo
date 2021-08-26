FROM ubi7/ubi:7.7
MAINTAINER Javier SArmiento <j.sarmiento@telefonica.com>
LABEL description="Apache personalizado"
RUN yum install -y httpd && \
yum clean all
RUN echo "Hola desde Containerfile" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
