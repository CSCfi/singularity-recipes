#!/usr/bin/env bash

source /usr/share/lmod/9.1.2/init/bash
module purge
module use /appl/modulefiles/spack/x86_64/Core
module load gcc
module load openmpi

# Enable `gcc` and `binutils`
export PATH=/appl/soft/spack/core/v2026_03/compilers_ec/install_dir/linux-x86_64_v4/gcc-15.2.0-5v4dg5kq2xj3we7lmfsobmfvnc2l5mut/bin:/appl/soft/spack/core/v2026_03/compilers_ec/install_dir/linux-x86_64_v4/binutils-2.45-qmicimoddwomguj7tl2fgkp55fupbjge/bin:$PATH

NPROCS=10
OSU_MICRO_BENCHMARKS_VERSION=7.4

mkdir -p osu
cd ./osu
wget -q http://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}.tar.gz
tar xf osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}.tar.gz
cd osu-micro-benchmarks-${OSU_MICRO_BENCHMARKS_VERSION}
./configure CC=$(which mpicc) CXX=$(which mpicxx) CFLAGS=-O3
make -j${NPROCS}
