#!/usr/bin/env bash
module purge
module load gcc/14.3.0 openmpi/5.0.8 cuda/12.9.1 nccl/2.28.7-1
cd nccl-tests
make -j 10 CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT
make -j 10 CUDA_HOME=$CUDA_HOME NCCL_HOME=$NCCL_INSTROOT MPI=1 MPI_HOME=$OPENMPI_INSTROOT NAME_SUFFIX=_mpi
