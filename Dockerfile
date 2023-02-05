FROM node:lts-buster

RUN apt update -y
RUN apt upgrade -y

RUN npm install -g npm@latest

WORKDIR /home/frmdev/frmdev
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "index.js"]
