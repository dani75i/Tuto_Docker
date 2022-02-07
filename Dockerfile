FROM ubuntu

ENV path /usr

WORKDIR ${path}

COPY . ${path}

RUN apt-get update -y && apt-get install figlet

CMD figlet Welcome dans le container !