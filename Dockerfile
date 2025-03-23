FROM python:3.12-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000

RUN pip intall -r /temp/requirements.txt

RUN adduser --disable-password mib

USER mib
