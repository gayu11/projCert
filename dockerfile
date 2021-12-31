FROM devopsedu/webapp
RUN apt-get install -y apache2
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
