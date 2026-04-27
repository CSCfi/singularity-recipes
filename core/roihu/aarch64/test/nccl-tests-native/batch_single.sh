#!/bin/bash
#SBATCH --account=project_2001659
#SBATCH --output=nccl-tests-single-%j.out
#SBATCH --job-name=nccl-tests-single
#SBATCH --partition=gpumedium
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=288
#SBATCH --gpus-per-node=4
#SBATCH --mem=0
#SBATCH --exclusive
module purge
module load gcc/14.3.0
module load openmpi
module load cuda
module load nccl
module list
srun ./nccl-tests/build/all_reduce_perf -b 8 -e 128M -f 2 -g 4
