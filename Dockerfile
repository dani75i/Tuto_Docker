FROM python:3

ENV path /home

WORKDIR ${path}

COPY . ${path}

RUN pip install django 

CMD cd mysite && python manage.py runserver

EXPOSE 8000

