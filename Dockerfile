FROM node:11-alpine

WORKDIR /app

COPY package.json /app
RUN npm install && npm install -g nodemon

COPY . /app

EXPOSE 8884

CMD [ "npm", "start" ]