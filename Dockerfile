# Helthe PHP

FROM helthe/ubuntu
MAINTAINER Carl Alexander <carlalexander@helthe.co>

RUN apt-get install -y php-apc php5-curl php5-fpm php5-gd php5-intl php5-mysql php5-pgsql

ADD php.ini /etc/php5/fpm/php.ini
ADD php-fpm.conf /etc/php5/fpm/php-fpm.conf
ADD www.conf /etc/php5/fpm/pool.d/www.conf

VOLUME ["/var/log/php"]

EXPOSE 9000

ENTRYPOINT ["php5-fpm"]
