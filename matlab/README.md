Apptainer containers for MATLAB designed for use in High-Performance Computing (HPC) clusters.
The container definitions use the official [MATLAB container dependencies](https://github.com/mathworks-ref-arch/container-images) and the [MATLAB Package Manager (MPM)](https://github.com/mathworks-ref-arch/matlab-dockerfile) to install MATLAB and all available toolboxes on Linux.

Change working directory:

```bash
cd r2025a/rockylinux8
```

Build the container:

```bash
make
```

Run the container:

```bash
apptainer exec --bind /run/user matlab.sif matlab
```
