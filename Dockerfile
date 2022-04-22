
FROM httpd:2.4
RUN mkdir /var/www/html/index.html
COPY index.html /var/www/html/index.html

EXPOSE 80


