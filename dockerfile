FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add npm git

RUN mkdir /crafty-control
COPY ./files ./crafty-control
WORKDIR /crafty-control

RUN npm install --force
RUN npm install -g @ionic/cli
RUN npm install -g serve --force

ENV NODE_OPTIONS=--openssl-legacy-provider
RUN ionic build --prod --public-url=./

CMD serve -s ./build/ -l tcp://0.0.0.0:8100