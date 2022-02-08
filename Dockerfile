FROM python:3

ENV path /home

WORKDIR ${path}

COPY . ${path}

RUN pip install django && cd mysite

EXPOSE 8000

