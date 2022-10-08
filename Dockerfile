FROM node:16-alpine

RUN apk add python3 alpine-sdk

COPY . /usr/share/discord-reposter

WORKDIR /usr/share/discord-reposter

RUN npm ci

CMD node reposter.js
