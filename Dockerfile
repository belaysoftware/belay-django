FROM python:3.10-slim

ENV TZ=America/Chicago
ENV POETRY_VIRTUALENVS_CREATE=False

RUN apt update && \
    apt install -y --no-install-recommends build-essential git ssh wget unzip && \
    pip install -U --no-cache-dir pip poetry uwsgi pywatchman && \
    rm -Rf /root/.cache && \
    apt remove -y build-essential && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*
