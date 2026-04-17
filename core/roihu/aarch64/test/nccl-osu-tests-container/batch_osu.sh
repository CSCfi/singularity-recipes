#!/usr/bin/env bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00
# Use all four NICs per node
export UCX_MAX_RNDV_LANES=4
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bibw
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
