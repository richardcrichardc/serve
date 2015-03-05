FROM phusion/baseimage:0.9.10
MAINTAINER Richard Collins <richardc@richardc.net>

# Set correct environment variables.
ENV HOME /root

# Disable SSH (Not using it at the moment).
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]


# Install ubuntu packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  nginx \
  php5-fpm \
  php5-gd \
  php5-mcrypt \
  php5-mysql \
  php5-curl
  

EXPOSE 80

VOLUME /data

# Nginx site configuration should be at /data/nginx-site.conf
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /data/nginx-site.conf /etc/nginx/sites-enabled/site.conf

# Tell nginx to stay in the foreground
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Set nginx to run as a daemon in container
RUN mkdir /etc/service/nginx
ADD run-nginx.sh /etc/service/nginx/run


# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  


