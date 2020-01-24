FROM node:alpine3.10

RUN mkdir /code
WORKDIR /code

COPY . /code
RUN yarn install
RUN yarn build

EXPOSE 3000

ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000