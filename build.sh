#!/usr/bin/env bash
SWIG=/usr/local/bin/swig
case $1 in
	python )
		`$SWIG -python abBleGatewaySdk.i`
		gcc -c abBleGatewaySdk.c abBleGatewaySdk_wrap.c -I /usr/include/python2.7 -fPIC
		ld -shared abBleGatewaySdk.o abBleGatewaySdk_wrap.o -o _abBleGatewaySdk.so 
	;;
	ruby )
		echo "TODO"
	;;
	php )
		`$SWIG -php7 abBleGatewaySdk.i`
		gcc `php-config --includes` -fpic -c abBleGatewaySdk.c abBleGatewaySdk_wrap.c 
		ld -shared abBleGatewaySdk.o abBleGatewaySdk_wrap.o -o abBleGatewaySdk.so 
	;;
	golang )	
		echo "TODO"
	;;
	java )
		swig -java abBleGatewaySdk.i
		gcc -c abBleGatewaySdk.c abBleGatewaySdk_wrap.c -I  -fPIC
		ld -shared abBleGatewaySdk.o abBleGatewaySdk_wrap.o -o _abBleGatewaySdk.so 		
	;;
	*)
		echo "$1 TODO"
	;;
esac

