FROM node:lts-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

FROM node:lts-alpine

WORKDIR /app

COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
