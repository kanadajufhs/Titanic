FROM python:3.8.0-slim

RUN apt-get update && apt-get install -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --upgrade pip \
    && pip install --upgrade setuptools

WORKDIR /src
COPY ./ ${PWD}

RUN pip install -r requirements.txt --no-cache-dir
