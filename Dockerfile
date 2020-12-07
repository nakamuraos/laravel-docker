FROM mariadb:10.5.8

# run update & upgrade
RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& mkdir /home/laravel

WORKDIR /home/laravel

# prepare env
COPY docker-install-env.sh ./
RUN chmod 777 docker-install-env.sh && ./docker-install-env.sh

# prepare source code
COPY . /home/laravel
RUN ./composer.phar install
RUN php artisan key:generate --show

EXPOSE 8080

ENTRYPOINT ["php", "artisan"]
CMD ["serve", "--port=8080"]
