#!/bin/sh

TARGET_DIR="/home/samurai/tools"
if [ ! -d $TARGET_DIR ] ; then
  mkdir -p $TARGET_DIR  || exit "Could Not Make Dir"
fi

if [ ! -w $TARGET_DIR ] ; then
  exit "$TARGET_DIR is not writable!!!"
fi

cd $TARGET_DIR
echo "###   Grabbing Latest SQLMAP from github ..."
git clone https://github.com/sqlmapproject/sqlmap.git sqlmap 

echo "###   Grabbing ZAP 2.1.0 ..."
wget 'https://zaproxy.googlecode.com/files/ZAP_2.1.0_Linux.tar.gz'
tar xzf ZAP_2.1.0_Linux.tar.gz
ln -s ZAP_2.1.0 zap


