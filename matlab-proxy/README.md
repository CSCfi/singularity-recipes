Apptainer container which extends the MATLAB contains image with the [MATLAB Proxy](https://github.com/mathworks/matlab-proxy), an HTML-based web interface for MATLAB.

Change working directory:

```bash
cd rockylinux8
```

Build the container image:

```bash
make
```

Run the container:

```bash
apptainer exec --bind /run/user matlab.sif matlab-proxy-app
```
