FROM ubuntu:focal

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm
RUN npm install -g markdownlint-cli
