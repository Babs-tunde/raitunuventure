#!/bin/bash

export PATH="$HOME/.local/bin:$PATH"

# Activate the virtual environment
source virt/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Apply migrations and collect static files
python3 manage.py migrate
python3 manage.py collectstatic --noinput
