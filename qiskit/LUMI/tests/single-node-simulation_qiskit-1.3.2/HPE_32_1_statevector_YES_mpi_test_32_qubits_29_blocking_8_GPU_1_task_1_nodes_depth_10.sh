#!/bin/bash

#SBATCH --job-name=HPE_32_1_statevector_YES_mpi_test_32_qubits_29_blocking_8_GPU_1_task_1_nodes_depth_10   # Job name
#SBATCH --output=test-results_depth_10/HPE_32_1_statevector_YES_mpi_test_32_qubits_29_blocking_8_GPU_1_task_1_node_depth_10.o%j # Name of stdout output file
#SBATCH --error=test-results_depth_10/HPE_32_1_statevector_YES_mpi_test_32_qubits_29_blocking_8_GPU_1_task_1_node_depth_10.e%j  # Name of stderr error file
#SBATCH --account=$SLURM_PROJECT_ID
#SBATCH --time=02:00:00



## RESOURCES ----------------------------
#SBATCH --partition=$SLURM_PARTITION_NAME
#SBATCH --nodes=1
#SBATCH --gpus-per-node=8
#SBATCH --tasks-per-node=1
#SBATCH --gpus-per-task=8
#SBATCH --cpus-per-task=56

## LOAD MODULES -------------------------



## ADDITIONAL OPTIONS -------------------
export LUMI_QISKIT_SINGULARITY_TEST_CONTAINER_PATH=$PATH_TO_REPO/singularity-recipes/qiskit/LUMI/HPE_Cray_MPI/qiskit_1.3.2_rocm_6.0.3/output/03-qiskit-1.3.2_qiskit-aer-gpu-rocm-0.16.0.1.sif
export LUMI_QISKIT_SINGULARITY_PYTHON_SCRIPT_PATH=$PATH_TO_REPO/singularity-recipes/qiskit/LUMI/tests/singularity_qiskit_aer_gpu_mpi_test_variable_qubits.py
export LUMI_QISKIT_SINGULARITY_WRAPPER_GPU_PATH=$PATH_TO_REPO/singularity-recipes/qiskit/LUMI/tests/run-singularity

## prefixing singularity container will automatically pull an env variable with SINGULARITYENV_ prefix into the container that you are running
export SINGULARITYENV_NUMBER_OF_QUBITS=32

## if SINGULARITYENV_USE_CACHE_BLOCKING=True then SINGULARITYENV_NUMBER_OF_BLOCKING_QUBITS must be set
export SINGULARITYENV_USE_CACHE_BLOCKING=True
export SINGULARITYENV_NUMBER_OF_BLOCKING_QUBITS=29

export SINGULARITYENV_CIRCUIT_DEPTH=10
export SINGULARITYENV_NUMBER_OF_SHOTS=1000
export SINGULARITYENV_SIMULATION_METHOD="statevector"
export SINGULARITYENV_SIMULATION_DEVICE="GPU"

## PRINT ARGUMENTS ----------------------
#print()
echo "Singularity Container   : ${LUMI_QISKIT_SINGULARITY_TEST_CONTAINER_PATH}"
echo "Simulation Method       : ${SINGULARITYENV_SIMULATION_METHOD}"
echo "# of Qubits             : ${SINGULARITYENV_NUMBER_OF_QUBITS}"
echo "# of Blocking Qubits    : ${SINGULARITYENV_NUMBER_OF_BLOCKING_QUBITS}"
echo "Circuit Depth           : ${SINGULARITYENV_CIRCUIT_DEPTH}"
echo "SLURM JOB NAME          : ${SLURM_JOB_NAME}"
echo "SLURM JOB ID            : ${SLURM_JOB_ID}"
echo "NODES                   : ${SLURM_NNODES}"
echo "NODE LIST               : ${SLURM_NODELIST}"
echo "TASKS PER NODE          : ${SLURM_NTASKS_PER_NODE}"
echo "CPUS PER TASK           : ${SLURM_CPUS_PER_TASK}"
echo "GPUS PER NODE           : ${SLURM_GPUS_PER_NODE}"
echo "GPUS PER TASK           : ${SLURM_GPUS_PER_TASK}"
echo "GPU LIST                : ${SLURM_JOB_GPUS}"

mask=mask_cpu:0xfe000000000000,0xfe00000000000000,0xfe0000,0xfe000000,0xfe,0xfe00,0xfe00000000,0xfe0000000000

export MPICH_GPU_SUPPORT_ENABLED=1

## RUN CODE -----------------------------
srun --cpu-bind=$mask $LUMI_QISKIT_SINGULARITY_WRAPPER_GPU_PATH $LUMI_QISKIT_SINGULARITY_TEST_CONTAINER_PATH python $LUMI_QISKIT_SINGULARITY_PYTHON_SCRIPT_PATH