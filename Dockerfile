FROM node:16-alpine

COPY . /usr/share/discord-reposter

WORKDIR /usr/share/discord-reposter

RUN apk add python3 alpine-sdk

RUN npm ci

CMD node reposter.js
