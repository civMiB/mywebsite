FROM python:3.12-alpine3.21

COPY requirements.txt /temp/requirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password mib

USER mib
