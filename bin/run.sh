#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.."
DIR="$(readlink -f "$DIR")"
pip install -r frontend/requirements.txt
source "${DIR}/venv/bin/activate"
python frontend/manage.py runserver "0.0.0.0:8000"
# python manage.py test
#python manage.py migrate
#python manage.py createsuperuser
