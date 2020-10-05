FROM node:14.12.0-stretch-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install watch -g

RUN npm install .

COPY . .
EXPOSE 8080

CMD [ "npm", "run", "watch" ]
