FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add npm git

RUN mkdir /crafty-control
COPY ./files ./crafty-control
WORKDIR /crafty-control

RUN npm install --force
RUN npm install -g @ionic/cli --force

ENV NODE_OPTIONS=--openssl-legacy-provider

CMD ionic serve