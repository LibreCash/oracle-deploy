#!/bin/sh
HOST=$0         # $M0
PASSFILE=$1     # ../../private/pass-m-1
CONFIGNODE=$2   # ../../private/common-config.json
CONFIGUI=$3     # ../../private/m-1-ui-config.js

sshpass -f $PASSFILE scp $CONFIGNODE $HOST:~/config.json

if [ $CONFIGUI ]; then
	sshpass -f $PASSFILE scp $CONFIGUI $HOST:~/config.js
fi
