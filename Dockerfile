FROM node:16.17.0-alpine3.16

RUN apk update \
  && apk upgrade

WORKDIR /app

EXPOSE 8100

COPY ["package.json", "yarn.lock", "capacitor.config.ts", "ionic.config.json", "./"]

RUN npm i -g @ionic/cli@6.20.1

RUN ionic integrations enable capacitor