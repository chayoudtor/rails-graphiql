FROM node:10.16.3

RUN mkdir /code
WORKDIR /code

COPY . /code
RUN yarn install

ENV HOST 0.0.0.0

EXPOSE 3000

CMD ["yarn", "prod"]