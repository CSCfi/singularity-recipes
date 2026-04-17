#!/usr/bin/env bash
module purge
module load gcc openmpi

NPROCS=10
OSU_MICRO_BENCHMARKS_VERSION=7.4

mkdir -p osu
cd ./osu
wget -q http://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}.tar.gz
tar xf osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}.tar.gz
cd osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}
./configure CC=$(which mpicc) CXX=$(which mpicxx) CFLAGS=-O3
make -j${NPROCS}
