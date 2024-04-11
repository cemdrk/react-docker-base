FROM node:20

RUN npm install -g npm

WORKDIR /app

COPY ./app /app

RUN npm install
