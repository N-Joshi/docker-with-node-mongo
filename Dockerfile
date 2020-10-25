FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/Project1

COPY ./Project1 /home/Project1

RUN npm install

CMD ["node", "/home/Project1/server.js"]
