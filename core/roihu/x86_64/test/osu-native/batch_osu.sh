#!/bin/bash
#SBATCH --account=project_2001659 --partition=medium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 --exclusive
srun ./osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_bibw
srun ./osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard/osu_latency
