#!/bin/bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=0 --nodes=1 --ntasks-per-node=1 --cpus-per-task=288 --gpus-per-node=4 --time=00:15:00
module purge
module load gcc/14.3.0 openmpi/5.0.8 cuda/12.9.1 nccl/2.28.7-1
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$NCCL_INSTROOT/lib:$LD_LIBRARY_PATH
srun ./nccl-tests/build/all_reduce_perf -b 8 -e 128M -f 2 -g 4
