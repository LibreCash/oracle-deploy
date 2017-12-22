#!/bin/sh

M0=root@127.0.0.0
L1=root@127.0.0.1
L2=root@127.0.0.2

set -x

sshpass -f ../../private/pass-m-1 scp readonly $M0:~/.ssh/id_rsa
sshpass -f ../../private/pass-m-1 scp readonly.pub $M0:~/.ssh/id_rsa.pub
sshpass -f ../../private/pass-m-1 ssh $M0 'chmod go-rw ~/.ssh/id_rsa*'

sshpass -f ../../private/pass-l-1 scp readonly $L1:~/.ssh/id_rsa
sshpass -f ../../private/pass-l-1 scp readonly.pub $L1:~/.ssh/id_rsa.pub
sshpass -f ../../private/pass-l-1 ssh $L1 'chmod go-rw ~/.ssh/id_rsa*'

sshpass -f ../../private/pass-l-2 scp readonly $L2:~/.ssh/id_rsa
sshpass -f ../../private/pass-l-2 scp readonly.pub $L2:~/.ssh/id_rsa.pub
sshpass -f ../../private/pass-l-2 ssh $L2 'chmod go-rw ~/.ssh/id_rsa*'


