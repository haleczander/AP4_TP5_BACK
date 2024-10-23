FROM node:13.12.0-alpine

WORKDIR /app
COPY . .

RUN npm i
RUN npm build

EXPOSE 5001

ENTRYPOINT [ "npm", "start" ]