FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 && apt-get clean
COPY html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
