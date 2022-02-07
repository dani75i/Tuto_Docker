FROM ubuntu

ENV path /usr

WORKDIR ${path}

COPY . $(path)

