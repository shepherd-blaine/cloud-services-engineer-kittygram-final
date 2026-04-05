#!/bin/bash

FRONTEND_STATIC_DIR=/mnt/static/frontend/build

if [ -d $FRONTEND_STATIC_DIR ]; then
    rm -rf $FRONTEND_STATIC_DIR
fi;

mkdir -p $FRONTEND_STATIC_DIR

cp -r /app/build/. $FRONTEND_STATIC_DIR
