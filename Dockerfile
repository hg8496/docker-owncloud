FROM hg8496/apache

MAINTAINER hg8496@cstolz.de
ENV HOME /root

ADD rights.sh /var/tmp/rights.sh
RUN apt-get update \
    && apt-get install curl php5-gd php5-json php5-mysql php5-curl php5-intl php5-mcrypt php5-imagick -y \
    && a2enmod rewrite \
    && curl -o owncloud.tar.bz2 https://download.owncloud.org/community/owncloud-8.2.0.tar.bz2 \
    && tar xf owncloud.tar.bz2 \
    && cp -a owncloud/. /var/www/html \
    && chown -R www-data:www-data /var/www/html \
    && rm -r owncloud* \
    && rm /var/www/html/index.html \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME [ "/var/www/html/config" ]

