FROM node:alpine3.10

RUN mkdir /code
WORKDIR /code

COPY . /code
RUN yarn install
RUN yarn build

ENV HOST 0.0.0.0