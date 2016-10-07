#! /bin/bash

TIMEFORMAT='%3R'; time(./qemu-boot.expect  \
    qemu-system-aarch64 -machine type=virt \
                        -cpu cortex-a57    \
                        -nographic         \
                        -smp cpus=1        \
                        -m 4096\
                        -kernel Image.48   \
                        -append "console=ttyAMA0") 2>> time.log
