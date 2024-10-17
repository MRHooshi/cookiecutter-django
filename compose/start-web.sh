#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

python manage.py migrate
python manage.py collectstatic --noinput

exec gunicorn {{cookiecutter.project_slug}}.wsgi --bind 0.0.0.0:8000 --chdir=/src --workers=$WEB_WORKERS --threads=$WEB_THREADS
