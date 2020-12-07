FROM mariadb:latest

# run update & upgrade
RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& mkdir /home/laravel

WORKDIR /home/laravel

# prepare env
COPY docker-install-env.sh ./
RUN ./docker-install-env.sh

# prepare source code
COPY . /home/laravel
RUN php artisan key:generate --show

EXPOSE 8080

ENTRYPOINT ["php artisan serve --port=8080"]

CMD ["-D", "FOREGROUND"]
