# About

Base image intended for Belay Django apps. Doesn't actually include Django!

It does include tools and utilities that need to be installed via `apt`, anything
that requires a functioning build system, and things that need to be bootstrapped
into a typical Django Dockerfile:

- uwsgi + mimesupport
- watchman
- poetry
- psycopg2

And utilities:

- ssh
- git
- curl & wget
- unzip

Also:

- Sets the timezone to US Central.
- Sets PYTHONUNBUFFERED to force unbuffered/immediate mode on stdout/stderr; prevents logs from being dropped.
- Configures `poetry` to install dependencies globally.

# Usage

Python 3.10:

```
FROM ghcr.io/belaysoftware/belay-django:python-3.10
```

Python 3.11:

```
FROM ghcr.io/belaysoftware/belay-django:python-3.11
```

Python 3.12:

```
FROM ghcr.io/belaysoftware/belay-django:python-3.12
```
