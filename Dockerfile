FROM devopsedu/webapp
ADD projCert /var/www/html
RUN rm /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
