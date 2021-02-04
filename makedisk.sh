#!/bin/bash -x
rm /demo/sysgo_dev.dsk
os9 format -e /demo/sysgo_dev.dsk
os9 makdir /demo/sysgo_dev.dsk,SYSGO
os9 makdir /demo/sysgo_dev.dsk,SYSGO/RELS
for i in *.a makefile deffile env*; do
	os9 copy -l ${i} /demo/sysgo_dev.dsk,SYSGO/${i}
done
os9 dsave -e RELS /demo/sysgo_dev.dsk,SYSGO/RELS


