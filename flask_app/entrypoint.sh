#!/usr/bin/env bash

# Will be run from within the Docker container
# Takes care of installing dependencies, migrating tables into
# the db, and starting the Flask app
# Named entrypoint.sh by convention

echo "Running entrypoint.sh"

pip3 install -r /app/requirements.txt
echo "HI MOMMHY!!!"

pipenv shell

# Migrates the db and starts the app. Avoids using the "flask run" command
python3 book_ratings.py db upgrade
# run -h 0.0.0.0 assigns the app's host
python3 book_ratings.py run -h 0.0.0.0