FROM python:3.9

RUN apt-get update
RUN pip install pytest
RUN pip install requests

RUN mkdir /opt/test
COPY . /opt/test
WORKDIR /opt/test

