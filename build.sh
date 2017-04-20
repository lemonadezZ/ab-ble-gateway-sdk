#!/usr/bin/env bash
swig -python abBleGatewaySdk.i
gcc -c abBleGatewaySdk.c abBleGatewaySdk_wrap.c -I /usr/include/python2.7 -fPIC
ld -shared abBleGatewaySdk.o abBleGatewaySdk_wrap.o -o abBleGatewaySdk.so 
