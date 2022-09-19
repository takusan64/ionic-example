FROM node:16.14.0-alpine3.15

USER root

RUN apk update \
  && apk upgrade

RUN apk add ruby ruby-dev make gcc libc-dev git \
  && gem install -n /usr/local/bin cocoapods -v 1.11.2

RUN export PATH=$PATH:/usr/local/bin

WORKDIR /app

EXPOSE 8100

COPY ["package*.json", "capacitor.config.ts", "ionic.config.json", "./"]

RUN npm i -g @ionic/cli@6.20.1

RUN ionic integrations enable capacitor