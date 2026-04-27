#!/bin/bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=0 --nodes=2 --ntasks-per-node=1 --time=00:05:00 --exclusive
# Use all four NICs per node
#export UCX_MAX_RNDV_LANES=4
srun ./osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_bibw
srun ./osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_latency
