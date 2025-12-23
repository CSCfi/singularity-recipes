import os
from qiskit import QuantumCircuit, transpile
from qiskit.transpiler import CouplingMap
from qiskit_aer import AerSimulator
from qiskit.circuit.library import QuantumVolume
import time


## CHOOSE PARAMETERS - Values obtained from sbatch script that are imported into SINGULARITY CONTAINER using SINGULARITYENV_*env variable -----------------------------------------

#depth = 30                            # How many layers of quantum gates does the circuit have (Applies for Quantum Volume circuit)
#num_shots = 1000                      # How many times we sample the circuit
#sim_method = 'statevector'            # Circuits with over 30 qubits start to require a lot of memory if using statevector simulator
#sim_device = 'GPU'                    # Requires system that provides GPU
#use_cache_blocking = True             # Enables cache blocking technique. Qiskit Aer parallelizes simulations by distributing quantum states into distributed memory space.
#num_blocking_qubits = 25              # Must be smaller than qubits-log2(num_processes). Smaller number of blocking qubits -> more processess (beneficial to utilize MPI by allocating more resources)
use_batched_shots = True               # Enables distributing shots to multiple processess
num_parallel_experiments = 1           # Does not seem to do anything when running with MPI, probably intended to be used with multithreading

qubits = os.getenv('NUMBER_OF_QUBITS')                       # How many qubits does the circuit have obtained from sbatch script env variable
if qubits is None:
    raise ValueError("Environment variable NUMBER_OF_QUBITS is not set")
qubits = int(qubits)                                         # Convert to integer

use_cache_blocking = os.getenv('USE_CACHE_BLOCKING')        # Enable or Disable cache block, cache blocking used when simulation_method=statevector otherwise disable with FALSE
if use_cache_blocking is None:
    raise ValueError("Environment variable USE_CACHE_BLOCKING is not set")
use_cache_blocking = bool(use_cache_blocking)              # Convert to boolean value

num_blocking_qubits = os.getenv('NUMBER_OF_BLOCKING_QUBITS') # Enabled with use_cache_blocking, How many qubits does the circuit have obtained from sbatch script env variable
if num_blocking_qubits is None:
    raise ValueError("Environment variable NUMBER_OF_BLOCKING_QUBITS is not set")
num_blocking_qubits = int(num_blocking_qubits)               # Convert to integer

depth = os.getenv('CIRCUIT_DEPTH')                           # depth of circuit obtained from sbatch script env variable
if depth is None:
    raise ValueError("Environment variable CIRCUIT_DEPTH is not set")
depth = int(depth)                                           # Convert to integer

num_shots = os.getenv('NUMBER_OF_SHOTS')                     # number of shots obtained from sbatch script env variable
if num_shots is None:
    raise ValueError("Environment variable NUMBER_OF_SHOTS is not set")
num_shots = int(num_shots)                                   # Number of shots 

sim_method = os.getenv('SIMULATION_METHOD')                  # Method of simulating qubits in circuit, valid methods are statevector, 
if sim_method is None:
    raise ValueError("Environment variable NUMBER_OF_SHOTS is not set")
sim_method = str(sim_method)                              # set value to string

sim_device = os.getenv('SIMULATION_DEVICE')                  # Method of simulating qubits in circuit, valid methods are statevector, 
if sim_device is None:
    raise ValueError("Environment variable SIMULATION_DEVICE is not set")
sim_device = str(sim_device)                              # set value to string

start_time = time.time()


## INITIALIZE SIMULATOR BACKEND ---------------------------------------------------------------------------------------------------
sim = AerSimulator(method=sim_method, device=sim_device, batched_shots_gpu=use_batched_shots)


## CREATE CIRCUIT -----------------------------------------------------------------------------------------------------------------
circuit = QuantumVolume(qubits, depth, seed=0)
circuit.measure_all()


## TRANSPILE THE FOR CIRCUIT FOR FULL COUPLING MAP --------------------------------------------------------------------------------
coupling_map = CouplingMap.from_full(qubits)
transpiled_circuit = transpile(circuit, sim, coupling_map=coupling_map, optimization_level=0)


## RUN THE SIMULATION -------------------------------------------------------------------------------------------------------------
print(f"Simulation starts in {time.time() - start_time}")
result_statevec = sim.run(transpiled_circuit, shots=num_shots, seed_simulator=12345, blocking_enable=use_cache_blocking, blocking_qubits=num_blocking_qubits, max_parallel_experiments=num_parallel_experiments).result()
print(f"Simulation ready in {time.time() - start_time}")


## GATHER THE RESULTS AND PRINT WITH SOME ADDITIONAL METADATA ---------------------------------------------------------------------
input_data = {'Circuit' : 'Quantum Volume', 'Qubits' : qubits, 'Depth' : depth, 'Shots' : num_shots, 'Batched Shots' : use_batched_shots , 'Device' : sim_device, 'Simulation Method' : sim_method}
if (use_cache_blocking):
    num_processes = 2**(qubits - num_blocking_qubits)
    input_data['Blocking Qubits'] = num_blocking_qubits
    input_data['Num Processes'] = num_processes

dict = result_statevec.to_dict()
meta = dict['metadata']

print(f"{input_data}")
print(f"{meta}")
print(f"-------------------------------------------------------------- \n")
