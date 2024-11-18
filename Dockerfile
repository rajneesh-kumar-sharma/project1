FROM ubuntu
RUN apt update 
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean 
WORKDIR /var/www/html/
COPY html/ ./
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]