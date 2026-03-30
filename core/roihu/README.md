Variants:

- architecture: x86_64 | aarch64
- compiler: gcc-15.2 | gcc-11.5 | gcc-14.3-cuda-12.9
- base image: rocky9
- image type: oci | sif

Query packages:

```bash
rmp -qa > rpm-$(hostame).txt
```

Query repositories:

```bash
dnf repolist --all
```

```bash
ls /etc/yum.repos.d
```
