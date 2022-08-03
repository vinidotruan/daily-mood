FROM node:latest as angular-daily-mood-app

RUN apt update && apt upgrade -y

EXPOSE 4300

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm i -g @angular/cli