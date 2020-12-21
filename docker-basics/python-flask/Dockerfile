FROM python:3.8.2-slim-buster

RUN apt-get update && apt-get install -qq -y \
    build-essential libpq-dev --fix-missing --no-install-recommends

WORKDIR /app

COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt

COPY . .
VOLUME ["static"]

CMD gunicorn -b 0.0.0.0:8000 "mobydock.app:create_app()"