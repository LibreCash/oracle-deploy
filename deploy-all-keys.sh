#!/bin/sh

deploy () {
	. $0
	./deploy-keys.sh $HOST $PASSFILE $GITKEYLOCAL $GITKEYREMOTE
}

deploy config-l0.sh
deploy config-l1.sh
deploy config-m0.sh
