#!/usr/bin/env bash
module purge
module load gcc/14.3.0
module load openmpi
module load cuda
module load nccl
module list

NPROCS=10

wget https://github.com/NVIDIA/nccl-tests/archive/refs/tags/v2.18.3.tar.gz
tar xf v2.18.3.tar.gz
rm v2.18.3.tar.gz
cd nccl-tests-2.18.3

make -j$NPROCS CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT
make -j$NPROCS CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT MPI=1 MPI_HOME=$OPENMPI_INSTROOT NAME_SUFFIX=_mpi
