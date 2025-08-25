Squashfs file of the [administered MathWorks Service Host](https://github.com/mathworks-ref-arch/administer-mathworks-service-host/) that can be used with the MATLAB container.

Build:

```bash
make
```

Usage:

```bash
apptainer exec \
    --bind=./mathworksservicehost.sqfs:/opt/mathworksservicehost:image-src=/ \
    --env=MATHWORKS_SERVICE_HOST_MANAGED_INSTALL_ROOT=/opt/mathworksservicehost \
    matlab.sif matlab
```
