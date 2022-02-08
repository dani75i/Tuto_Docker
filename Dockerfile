FROM python:3

ENV path /home

WORKDIR ${path}

COPY . ${path}

RUN pip install django 

CMD cd mysite

EXPOSE 8000

