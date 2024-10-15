FROM node:22-alpine

WORKDIR /app
COPY package*.json .

RUN apk add nodejs
RUN apk add npm
RUN npm install

COPY . .

CMD ["node","app.js"]
