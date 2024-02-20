#!/bin/bash


export PROJ=project_2001659
export PARTITION=test
mkdir data
set +x

srun  -N 2 -n 2 -p $PARTITION -A $PROJ osu-native/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/native_latency_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ osu-native/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/native_latency_1n.txt
srun  -N 2 -n 2 -p $PARTITION -A $PROJ osu-native/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/native_bw_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ osu-native/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/native_bw_1n.txt
export PMIX_MCA_gds=hash

ml purge

srun  -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD ompi.sif osu-ompi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/ompi_latency_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD ompi.sif osu-ompi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/ompi_latency_1n.txt
srun  -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD ompi.sif osu-ompi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/ompi_bw_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD ompi.sif osu-ompi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/ompi_bw_1n.txt

srun  -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD mpich.sif osu-mpich/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/mpich_latency_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD mpich.sif osu-mpich/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/mpich_latency_1n.txt
srun  -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD mpich.sif osu-mpich/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/mpich_bw_2n.txt
srun  -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD mpich.sif osu-mpich/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/mpich_bw_1n.txt

srun --mpi=pmi2 -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD,/usr/lib64/libpmi2.so intelmpi.sif osu-intelmpi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/intelmpi_latency_2n.txt
srun --mpi=pmi2 -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD,/usr/lib64/libpmi2.so intelmpi.sif osu-intelmpi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency > data/intelmpi_latency_1n.txt
srun --mpi=pmi2 -N 2 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD,/usr/lib64/libpmi2.so intelmpi.sif osu-intelmpi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/intelmpi_bw_2n.txt
srun --mpi=pmi2 -N 1 -n 2 -p $PARTITION -A $PROJ apptainer exec -B $PWD,/usr/lib64/libpmi2.so intelmpi.sif osu-intelmpi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw > data/intelmpi_bw_1n.txt

