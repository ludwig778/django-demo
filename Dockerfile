FROM python:2.7

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN mkdir socket

CMD ["gunicorn", "--bind=unix:/app/socket/gunicorn.sock", "django_demo.wsgi"]
