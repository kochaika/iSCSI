#!/bin/bash

apt-get install tgt

/usr/sbin/tgtd

tgtadm --lld iscsi --op new --mode target --tid 1 -T iqn.2015-10.com.example:storage.disk2.amiens.sys1.xyz

tgtadm --lld iscsi --op new --mode logicalunit --tid 1 --lun 1 -b /dev/sdd

echo "Fin. Current config:"

tgtadm --lld iscsi --op show --mode target

echo "Need to reboot"
