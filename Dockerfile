FROM httpd:2.4

#RUN apt install -y python3

COPY html/index.html/ /usr/local/apache2/htdocs/

EXPOSE 80
