#! /bin/bash

source ~/research/test-images/setenv.sh

qemu-system-aarch64 -machine type=virt -cpu cortex-a57 -nographic -smp cpus=1 -m 4096 -kernel Image.39 -append "console=ttyAMA0" \
    -fsdev local,id=r,path=/data/benchmarks/SPEC/cpu2006_v1.1_aarch64/,security_model=none -device virtio-9p-device,fsdev=r,mount_tag=r
