#! /bin/sh
Xvfb :99 -ac &
export DISPLAY=:99
nodejs svg_server.js -r http://regexper.tutorons.com
