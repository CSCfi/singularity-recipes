#!/bin/bash
#SBATCH --account=project_2001659
#SBATCH --output=nccl-tests-mpi-%j.out
#SBATCH --job-name=nccl-tests-mpi
#SBATCH --partition=gpumedium
#SBATCH --time=00:15:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=72
#SBATCH --gpus-per-node=4
#SBATCH --mem=0
#SBATCH --exclusive
module purge
module load gcc/14.3.0
module load openmpi/5.0.8
module load cuda/12.9.1
module load nccl/2.28.7-1
module list
srun ./nccl-tests/build/all_reduce_perf_mpi -b 8 -e 128M -f 2 -g 1
