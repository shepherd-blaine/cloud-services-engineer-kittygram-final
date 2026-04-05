#!/bin/bash

BACKEND_STATIC_DIR=/mnt/static/backend/static/

python manage.py migrate
python manage.py collectstatic -c --no-input

if [ -d $BACKEND_STATIC_DIR ]; then
    rm -rf $BACKEND_STATIC_DIR
fi;

mkdir -p $BACKEND_STATIC_DIR

cp -r /app/collected_static/. $BACKEND_STATIC_DIR
