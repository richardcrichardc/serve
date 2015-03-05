#!/bin/bash -e

# Copy default theme and other folders on first run
if [[ ! -e /content/themes ]]; then
    cp -r original-content/* /content/
fi

exec npm start --production
