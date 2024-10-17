#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

exec celery -A {{cookiecutter.project_slug}} worker -c $CEELRY_WORKERS --loglevel=INFO
