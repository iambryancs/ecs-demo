FROM node:latest
MAINTAINER Bryan CS <yanser25@gmail.com>

ADD . /var/www/srv

WORKDIR /var/www/srv

RUN npm install

RUN chmod +x ./test/test.sh
RUN ./test/test.sh

EXPOSE 80

CMD ["nodejs", "app.js"]
