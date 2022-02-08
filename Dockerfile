FROM python:3

ENV path /home 
ENV PYTHONUNBUFFERED=1

WORKDIR ${path}

COPY . ${path}

RUN pip install django 

CMD cd mysite && python manage.py runserver 0.0.0.0:8000

EXPOSE 8000

