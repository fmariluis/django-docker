FROM python:3.5.1

MAINTAINER Franco Mariluis <fmariluis@gmail.com>

# Installing gdal-bin for Geodjango projects
RUN apt-get update \
      && apt-get install -y --no-install-recommends \
      gdal-bin \
      && rm -rf /var/lib/apt/lists/*

COPY base.txt /tmp/base.txt
RUN pip install -r /tmp/base.txt
ADD development.txt /tmp/development.txt
RUN pip install -r /tmp/development.txt
