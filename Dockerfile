FROM python:2.7

ADD . /app
WORKDIR /app

CMD ["gunicorn", "--bind=unix:socket/test.sock","django_demo.wsgi"]
