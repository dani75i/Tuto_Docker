FROM ubuntu

ENV path /dev

WORKDIR ${path}

COPY . $(path)

