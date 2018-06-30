FROM dyoshikawa/laravel:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .
RUN chmod +x start.sh

RUN composer install

EXPOSE 8000
CMD bash start.sh
