#!/bin/bash

FILES="./files"
DATE=$(date +%F_%R:%S | sed 's/://g')

install -S .${DATE} -o root -g root -m 644 ${FILES}/lightdm.conf /etc/lightdm/lightdm.conf
