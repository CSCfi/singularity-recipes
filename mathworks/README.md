# Mathworks

## MATLAB

Apptainer containers for MATLAB designed for use in High-Performance Computing (HPC) clusters.
The container definitions use the official [MATLAB container dependencies](https://github.com/mathworks-ref-arch/container-images) and the [MATLAB Package Manager (MPM)](https://github.com/mathworks-ref-arch/matlab-dockerfile) to install MATLAB and all available toolboxes on Linux.

Build the container image:

```bash
make --directory=matlab/r2025a/rockylinux8
```

Run the container:

```bash
apptainer exec --bind=/run/user matlab/r2025a/rockylinux8/matlab.sif matlab
```

Run with custom license file or license server:

```bash
apptainer exec --bind=/run/user --env="MLM_LICENSE_FILE=<license-file-or-server>" matlab/r2025a/rockylinux8/matlab.sif matlab
```

## MATLAB proxy

Apptainer container which extends the MATLAB container image with the [MATLAB Proxy](https://github.com/mathworks/matlab-proxy), an HTML-based web interface for MATLAB.

Change working directory and build the container image:

```bash
make --directory=matlab-proxy/rockylinux8
```

Run the container:

```bash
apptainer exec --bind /run/user matlab-proxy/rockylinux8/matlab.sif matlab-proxy-app
```

## Administered MathWorks Service Host

Squashfs file of the [administered MathWorks Service Host](https://github.com/mathworks-ref-arch/administer-mathworks-service-host/) that can be used with the MATLAB container.

Build:

```bash
make --directory=servicehost
```

Usage:

```bash
apptainer exec \
    --bind=./mathworksservicehost.sqfs:/opt/mathworksservicehost:image-src=/ \
    --env=MATHWORKS_SERVICE_HOST_MANAGED_INSTALL_ROOT=/opt/mathworksservicehost \
    matlab/r2025a/rockylinux8/matlab.sif matlab
```
