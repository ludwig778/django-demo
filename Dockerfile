FROM python:2.7

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind=unix:socket/test.sock", "django_demo.wsgi"]
