Squashfs file of the MathWorks ServiceHost that can be bind mounted to the MATLAB container.

Build:

```bash
make
```

Usage:

```bash
apptainer exec --bind=$PWD/mathworksservicehost.sqfs:/opt/mathworksservicehost:image-src=/ --env=MATHWORKS_SERVICE_HOST_MANAGED_INSTALL_ROOT=/opt/mathworksservicehost matlab.sif matlab
```
