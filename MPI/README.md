

```
srun  -N 2 -n 2 -p test -A project_2001659 apptainer exec -B $PWD ompi.sif osu-ompi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
```


```
srun  -N 2 -n 2 -p test -A project_2001659 apptainer exec -B $PWD mpich.sif osu-mpich//libexec/osu-micro-benchmarks/mpi/pt2pt/osu_latency
```

## Intel
```
srun --mpi=pmi2  -N 2 -n 2  -p test -A project_2001659 apptainer exec -B $PWD,/usr/lib64/libpmi2.so  intelmpi.sif ./osu-intelmpi/libexec/osu-micro-benchmarks/mpi/pt2pt/osu_bw
```
