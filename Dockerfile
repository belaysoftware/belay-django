FROM python:3.10-slim

ENV TZ=America/Chicago
ENV POETRY_VIRTUALENVS_CREATE=False
ENV PYTHONUNBUFFERED=1

ADD vendor/watchman/bin /usr/local/bin
ADD vendor/watchman/lib /usr/local/lib
RUN mkdir -p /usr/local/var/run/watchman && \
    chmod 755 /usr/local/bin/watchman && \
    chmod 2777 /usr/local/var/run/watchman

RUN apt-get update && \
    apt-get install -y --no-install-recommends libpcre3 libpcre3-dev build-essential git ssh && \
    pip install -U --no-cache-dir pip poetry uwsgi pywatchman && \
    rm -Rf /root/.cache && \
    apt-get remove -y build-essential libpcre3-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
