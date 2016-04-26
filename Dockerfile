FROM python:3.5.1

MAINTAINER Franco Mariluis <fmariluis@gmail.com>

COPY base.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
