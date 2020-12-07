FROM debian:latest

# run update & upgrade
RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& mkdir /home/laravel

WORKDIR /home/laravel

# build env
COPY docker-install-env.sh ./
RUN ./docker-install-env.sh

COPY . /home/laravel

EXPOSE 8080

ENTRYPOINT ["php artisan serve"]

CMD ["-D", "FOREGROUND"]
