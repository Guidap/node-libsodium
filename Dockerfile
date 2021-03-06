FROM node:10.19.0-alpine

ARG ENVIRONMENT=development
ENV NODE_ENV=${ENVIRONMENT}

WORKDIR /usr/src/app

RUN npm install -g yarn --force

# Needed for libsodium build
RUN apk add build-base python libtool autoconf automake
RUN npm install -g node-gyp
