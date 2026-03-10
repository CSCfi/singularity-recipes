#!/bin/bash
module load openmpi/4.1.4
export PMIX_MCA_gds=hash
srun --account=project_2001659 --partition=test --mem=2G --nodes=2 --ntasks-per-node=1 --time=00:10:00 apptainer run openmpi-osu.sif
