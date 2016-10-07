#! /bin/bash

qemu-system-aarch64 -machine type=virt -cpu cortex-a57 -nographic -smp cpus=1 -m 1024 -kernel Image.39 -append "console=ttyAMA0"
