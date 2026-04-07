#!/bin/bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=0 --nodes=1 --ntasks-per-node=1 --cpus-per-task=288 --gpus-per-node=4 --time=00:15:00
srun apptainer exec --nv nccl-tests.sif /opt/nccl-tests/build/all_reduce_perf -b 8 -e 128M -f 2 -g 4
