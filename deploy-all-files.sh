#!/bin/sh

deploy () {
	. $0
	./deploy-files.sh $HOST $PASSFILE $ETH
}

deploy config-l0.sh
deploy config-l1.sh
deploy config-m0.sh
