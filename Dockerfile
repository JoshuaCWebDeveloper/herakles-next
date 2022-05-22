FROM node:alpine

RUN mkdir -p /usr/src/app
ENV PORT 3000

WORKDIR /usr/src/app

COPY package*.json /usr/src/app/

RUN npm install 

COPY . /usr/src/app/

RUN npm run build

CMD [ "npm","run","start" ]