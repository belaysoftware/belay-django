# About

Base image intended for Belay Django apps. Doesn't actually include Django!

It does include tools and utilies that needs to be installed via `apt`, anything
that requires a functioning build system, and things that need to be bootstraped
into a typical Django Dockerfile:

- uwsgi
- watchman
- poetry

And utilities:

- ssh
- git
- curl & wget
- unzip

# Usage

Python 3.10:

```
FROM ghcr.io/belaysoftware/belay-django:python-3.10
```

Python 3.11:

```
FROM ghcr.io/belaysoftware/belay-django:python-3.11
```

Sets the timezone to US Central.

Sets PYTHONUNBUFFERED to force unbuffered/immediate mode on stdout/stderr;
prevents logs from being dropped.

Configures `poetry` to install dependencies globally.
