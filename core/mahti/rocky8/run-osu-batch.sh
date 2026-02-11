#!/usr/bin/env bash
#SBATCH --exclusive --account=project_2001659 --partition=medium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00
export OMPI_MCA_io=^ompio
export SLURM_MPI_TYPE=pmix_v3
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw
srun apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
