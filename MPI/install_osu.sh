#!/bin/bash
OSU_VER=5.3.2
wget -q http://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-$OSU_VER.tar.gz
tar xf osu-micro-benchmarks-$OSU_VER.tar.gz
cd osu-micro-benchmarks-$OSU_VER
./configure --prefix=$1 CXX=$(which mpicc) CC=$(which mpicc) CFLAGS=-O3
make
make install
cd ..
rm -rf osu-micro-benchmarks-$OSU_VER
rm osu-micro-benchmarks-$OSU_VER.tar.gz
