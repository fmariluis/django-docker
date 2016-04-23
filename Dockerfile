FROM python:3.5.1

MAINTAINER Franco Mariluis <fmariluis@gmail.com>

ADD base.txt /tmp/base.txt
RUN pip install -r /tmp/base.txt
ADD development.txt /tmp/development.txt
RUN pip install -r /tmp/development.txt
