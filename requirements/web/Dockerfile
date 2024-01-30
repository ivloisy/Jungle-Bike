FROM php:apache

# COPY ./conf/000-default.conf /etc/apache2/sites-available/
# COPY ./conf/camagru.conf /etc/apache2/sites-enabled/

RUN apt update -y && apt upgrade -y \
	&& docker-php-ext-install mysqli pdo pdo_mysql

# RUN mkdir /home/uploads/

# VOLUME ../../uploads /home/uploads/

# RUN chown -R www-data:www-data /home/uploads/ \
# 	&& chmod -R 733 /home/uploads/