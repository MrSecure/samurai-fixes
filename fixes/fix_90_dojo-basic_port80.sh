#!/bin/bash

FILES="./files"
DATE=$(date +%F_%R:%S | sed 's/://g')

install -S .${DATE} -o samurai -g samurai -m 644 ${FILES}/dojo-basic /etc/apache2/sites-available/
service apache2 restart
