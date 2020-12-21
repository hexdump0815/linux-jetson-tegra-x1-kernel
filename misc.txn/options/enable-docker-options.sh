#!/bin/bash

cd /compile/source/linux-jetson-tx/kernel/kernel-4.9

for i in `cat /compile/doc/jetson-tx/misc.txn/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/jetson-tx/misc.txn/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
