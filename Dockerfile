FROM python:3

ENV path /home

WORKDIR ${path}

COPY . ${path}

CMD python say_hello.py