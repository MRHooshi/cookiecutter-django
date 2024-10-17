#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

exec celery -A {{cookiecutter.project_slug}} beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler
