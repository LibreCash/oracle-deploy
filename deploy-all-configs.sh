#!/bin/sh

deploy () {
	. $0
	./deploy-configs.sh $HOST $PASSFILE $CONFIGNODE $CONFIGUI
}

deploy config-l0.sh
deploy config-l1.sh
deploy config-m0.sh
