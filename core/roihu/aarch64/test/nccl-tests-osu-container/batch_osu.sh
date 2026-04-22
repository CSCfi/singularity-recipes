#!/usr/bin/env bash
#SBATCH --exclusive --account=project_2001659 --partition=gpumedium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 --gpus-per-node=1
# Use all four NICs per node with UCX_MAX_RNDV_LANES=4
srun apptainer run --cleanenv --nv --env=UCX_MAX_RNDV_LANES=4 nccl-tests-osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bibw
srun apptainer run --cleanenv --nv --env=UCX_MAX_RNDV_LANES=4 nccl-tests-osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
