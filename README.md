# About

Base image intended for Belay Django apps. Doesn't actually include Django!

It does include anything that needs to be installed via `apt`, and anything
that requires a functioning build system, and things that need to be bootstraped
into a typical Django Dockerfile:

- uwsgi
- pywatchman
- poetry

And utilities:

- SSH
- Git
- Wget
- Unzip

# Usage

```
FROM ghcr.io/belaysoftware/belay-django:python-10
```

Currently the only support Python version is 10 (via `python:10-slim`).

Sets the timezone to US Central.

Configures `poetry` to install dependencies globally.
