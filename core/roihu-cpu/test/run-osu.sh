#!/usr/bin/env bash
cd ./osu/osu-micro-benchmarks-7.4/c/mpi/pt2pt/standard
srun --exclusive --account=r_installation_spack --partition=medium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 ./osu_bibw
srun --exclusive --account=r_installation_spack --partition=medium --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 ./osu_latency
