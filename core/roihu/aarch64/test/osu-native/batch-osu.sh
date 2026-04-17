#!/bin/bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00
# Use all four NICs per node
export UCX_MAX_RNDV_LANES=4
srun ./osu/osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_bibw
srun ./osu/osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_latency
