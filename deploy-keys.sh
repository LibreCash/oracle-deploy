#!/bin/sh
HOST=$0         # $M0
PASSFILE=$1     # ../../private/pass-m-1
GITKEYLOCAL=$2  # readonly readonly.pub
GITKEYREMOTE=$3 # ~/.ssh/id_rsa ~/.ssh/id_rsa.pub

sshpass -f $PASSFILE scp $GITKEYLOCAL $HOST:$GITKEYREMOTE
sshpass -f $PASSFILE scp $GITKEYLOCAL.pub $HOST:$GITKEYREMOTE.pub
sshpass -f $PASSFILE ssh $HOST "chmod go-rw $KEYREMOTE $KEYREMOTE.pub"
