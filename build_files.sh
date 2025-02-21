#!/bin/bash

export PATH="$HOME/.local/bin:$PATH"

pip install --upgrade pip
pip install -r requirements.txt

python3 manage.py migrate
python3 manage.py collectstatic --noinput
