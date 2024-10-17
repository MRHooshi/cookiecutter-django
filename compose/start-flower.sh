#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

exec celery -A {{cookiecutter.project_slug}} flower -b $BROKER_URL --port=4000
