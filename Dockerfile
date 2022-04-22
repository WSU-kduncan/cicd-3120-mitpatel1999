
FROM httpd:2.4


EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
COPY index.html /var/www/html/index.html
