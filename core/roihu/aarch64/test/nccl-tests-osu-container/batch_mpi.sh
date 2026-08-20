#!/bin/bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --nodes=2 --ntasks-per-node=4 --cpus-per-task=72 --gpus-per-node=4 --time=00:15:00
module purge
srun apptainer run --nv nccl-tests-osu.sif /opt/nccl-tests-2.18.3/build/all_reduce_perf_mpi -b 8 -e 128M -f 2 -g 1
