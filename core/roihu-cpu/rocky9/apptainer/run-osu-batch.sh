#!/usr/bin/env bash
#SBATCH --exclusive --account=r_installation_spack --partition=medium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bibw
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
