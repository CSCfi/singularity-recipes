#!/usr/bin/env bash
module purge
module load gcc/14.3.0
module load openmpi
module load cuda
module load nccl
module list
git clone https://github.com/NVIDIA/nccl-tests.git nccl-tests
cd nccl-tests
make -j 10 CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT
make -j 10 CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT MPI=1 MPI_HOME=$OPENMPI_INSTROOT NAME_SUFFIX=_mpi
