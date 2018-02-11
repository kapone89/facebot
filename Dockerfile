FROM node:4.8.7
RUN apt-get install git

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY . .

RUN yarn install

CMD yarn run start
