#!/usr/bin/env bash

srun --account=project_2001659 --partition=test --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:10:00 apptainer exec osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw

srun --account=project_2001659 --partition=test --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:10:00 apptainer exec osu.sif /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw; /opt/osu-micro-benchmarks/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
