#! /bin/sh
#
# This script use "qemu-boot.sh" to boot QEMU for $ITERATION times

if [ $# -ne 1 ]; then
    echo "Usage:" $0 "<ITERATION>"
    exit 1
fi

ITERATION=$1
a=0
while [ $a -lt $ITERATION ]
do
    echo $a
    ./qemu-boot.sh
    a=$(expr $a + 1)
done
