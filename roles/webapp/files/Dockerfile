FROM ubuntu:16.04

#VOLUME ["/mnt/data"]

EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["/usr/local/bin/entrypoint"]
#CMD ["/usr/local/bin/owncloud"]

RUN apt-get update -y 
#RUN apt-get upgrade -y 
RUN  apt-get install -y \
    apache2 \
    wget \
    libapache2-mod-php \
    php-gd \
    php-json \
    php-mysql \
    php-sqlite3 \
    php-pgsql \
    php-curl \
    php-intl \
    php-mcrypt \
    php-imagick \
    php-zip \
    php-xml \
    php-mbstring \
    php-soap \
    php-ldap \
    php-apcu \
    php-redis \
    smbclient \
    unzip \
    php-smbclient \
    mysql-client \
    postgresql-client \
    sqlite \
    gettext-base && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /etc/apache2/sites-available/default-ssl.conf && \
  a2enmod rewrite headers env dir mime ssl expires 
#  mkdir -p /var/www/owncloud /mnt/data/files /mnt/data/config /mnt/data/certs /mnt/data/sessions && \
#  chown -R www-data:www-data /var/www/owncloud /mnt/data && \
#  chsh -s /bin/bash www-data
#  #curl https://download.owncloud.org/download/repositories/10.0/Ubuntu_17.04/Release.key |  apt-key add - && \
#  #sh -c "echo 'deb https://download.owncloud.org/download/repositories/10.0/Ubuntu_17.04/ /' > /etc/apt/sources.list.d/owncloud.list" && \
#  #apt-get update 
#
#COPY rootfs /
WORKDIR /var/www/html
RUN wget https://download.owncloud.org/community/owncloud-10.0.4.zip
RUN unzip owncloud-10.0.4.zip
CMD service apache2 start && tail -f /dev/null
