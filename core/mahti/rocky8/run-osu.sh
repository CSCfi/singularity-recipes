#!/usr/bin/env bash

srun --exclusive --account=project_2001659 --partition=test --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw

srun --exclusive --account=project_2001659 --partition=test --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:05:00 apptainer run osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
