#!/bin/sh
HOST=$0         # $M0
PASSFILE=$1     # ../../private/pass-m-1
ETH=$2			# true - install eth

sshpass -f $PASSFILE scp setup-swap.sh $HOST:~/

if [ $ETH ]; then
	sshpass -f $PASSFILE ssh $HOST 'wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.7.3-4bb3c89d.tar.gz && tar xzfv geth-linux-amd64-1.7.3-4bb3c89d.tar.gz && mv geth-linux-amd64-1.7.3-4bb3c89d/geth . && rm -rf geth-linux-amd64-1.7.3-4bb3c89d*'
	sshpass -f $PASSFILE ssh $HOST 'wget http://other.libre.live/geth.zip && tar xzf geth.zip'
fi

