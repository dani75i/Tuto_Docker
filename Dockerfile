FROM python:3

ENV path /home 
ENV PYTHONUNBUFFERED=1

WORKDIR ${path}

COPY . ${path}

RUN pip install django 

CMD cd mysite && python manage.py runserver

EXPOSE 8000

