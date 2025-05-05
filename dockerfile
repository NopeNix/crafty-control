FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add npm git

RUN mkdir /crafty-control
COPY ./files ./crafty-control
WORKDIR /crafty-control

RUN npm install --force
RUN npm install -g serve --force

CMD serve -l tcp://0.0.0.0:8100