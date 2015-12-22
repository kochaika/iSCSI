#!/bin/bash

curpath=$PWD

cd /usr/src

wget http://heanet.dl.sourceforge.net/project/scst/scst/scst-3.0.0.tar.bz2
wget http://heanet.dl.sourceforge.net/project/scst/iscsi-scst/iscsi-scst-3.0.0.tar.bz2
wget http://heanet.dl.sourceforge.net/project/scst/scstadmin/scstadmin-3.0.0.tar.bz2

tar xjf scst-3.0.0.tar.bz2
tar xjf iscsi-scst-3.0.0.tar.bz2
tar xjf scstadmin-3.0.0.tar.bz2


cd /usr/src/scst-3.0.0
make install

cd /usr/src/iscsi-scst-3.0.0
make install

cd /usr/src/scstadmin-3.0.0
make install

cd $curpath

cp ./scst.conf /etc/

echo "Need to reboot"
