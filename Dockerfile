FROM node:latest
MAINTAINER Bryan CS <yanser25@gmail.com>

ADD . /var/www/srv

WORKDIR /var/www/srv

RUN npm install

RUN chmod +x ./script/test.sh
RUN ./script/test.sh

EXPOSE 80

CMD ["nodejs", "app.js"]
