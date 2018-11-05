#!/bin/bash


mkdir testing
pushd testing

echo "Disk I/O test - Write"
dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync
rm test

echo "UnixBench 5"
wget https://github.com/kdlucas/byte-unixbench/archive/v5.1.3.tar.gz
tar xzvf v5.1.3.tar.gz
pushd v5.1.3
make
./Run dhry2reg whetstone-double syscall pipe context1 spawn execl shell1 shell8 shell16
popd
rm -rf v5.1.3*.*

echo "GeekBench 3"
wget http://cdn.primatelabs.com/Geekbench-3.4.2-Linux.tar.gz
tar -zxvf Geekbench-3.4.2-Linux.tar.gz
cd dist/Geekbench-3.4.2-Linux/
./geekbench
popd
rm -rf Geekbench-3.4.2-Linux.tar.gz dist

# Final cleanup
popd
rm -rf testing
