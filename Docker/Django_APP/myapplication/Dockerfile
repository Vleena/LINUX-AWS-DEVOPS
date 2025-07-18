FROM python:3.10
WORKDIR /app
COPY . /app

RUN pip install django 

EXPOSE 8444

CMD ["python","manage.py","runserver","0.0.0.0:8444"]

