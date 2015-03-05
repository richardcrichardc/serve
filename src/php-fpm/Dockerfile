FROM trusty

MAINTAINER Richard Collins <richardc@richardc.net>

# Install PHP-FPM and a few PHP modules
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
      php5-fpm \
      php5-gd \
      php5-mcrypt \
      php5-mysql \
      php5-curl
      
# Volume for configuration
VOLUME /data/etc

# Volume for doc_root, logging and fast-cgi unix domain socket
VOLUME /data/var

# Volume to map MySQL unix domain socket mysql.sock in on
VOLUME /var/run/mysqld

# PHP-FPM configuration must be provided in /data/etc/php-fpm.conf 
RUN ln -sf /data/etc/php-fpm.conf /etc/php5/fpm/php-fpm.conf

# PHP config can be tweaked with config file /data/etc/php-override.ini
RUN ln -sf /data/etc/php-override.ini /etc/php5/fpm/conf.d/99-php-override.ini

# Drop privileges for increased security
USER www-data

CMD ["/usr/sbin/php5-fpm"]

