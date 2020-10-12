FROM node:12.19-alpine

ENV NODE_ENV=production

WORKDIR /usr/src/app

# Install docker
RUN apk add --update docker openrc
RUN rc-update add docker boot

RUN npm install -g yarn --force

