# docker-gitlab-ci-runner-php7

FROM tetraweb/php:7.0
MAINTAINER  victor apostol  "apostol.victor@gmail.com"

RUN composer global require hirak/prestissimo
RUN docker-php-ext-enable zip mcrypt ftp

RUN apt-get install -y zip
RUN echo 'post_max_size = 800M' >> /usr/local/etc/php/conf.d/upload.ini
RUN echo 'upload_max_filesize = 200M' >> /usr/local/etc/php/conf.d/upload.ini
