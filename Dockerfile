FROM ubuntu

ENV path /usr

WORKDIR ${path}

COPY . ${path}

RUN apt-get update -y && apt-get install figlet && figlet DANIEL IS A BOSS BITCH !