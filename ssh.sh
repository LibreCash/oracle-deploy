#!/bin/sh
CONFIG=$1

. $CONFIG

echo ssh $HOST

sshpass -f $PASSFILE ssh $HOST
