#!/bin/bash

echo
echo "This script puts Samurai WTF's vulnerable targets into world accessible mode"
echo 
echo "    ***   THIS IS CONSIDERED DANGEROUS TO THE SECURITY OF YOUR SYSTEM!! ***"
echo
echo "Remember to run this script using sudo!"
echo "Press any key to continue..."
read KEY

D=""
FILES="./fixes/files"
DATE=$(date +%F_%R:%S | sed 's/://g')
SUFFIX="normal"

SITES="dojo-basic dojo-scavenger dvwa mutillidae"
for site in $SITES ; do
  $D install -S .${DATE} -o samurai -g samurai -m 644 ${FILES}/${site}.${SUFFIX} /etc/apache2/sites-available/${site}
done

## install -S .${DATE} -o samurai -g samurai -m 644 ${FILES}/dojo-basic /etc/apache2/sites-available/
$D service apache2 restart
