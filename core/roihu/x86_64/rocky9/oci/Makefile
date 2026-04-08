.PHONY: base
base: base.Dockerfile
	podman build -f base.Dockerfile -t localhost/base:v2026_03 --squash-all /

.PHONY: spack-gcc-15.2
spack-gcc-15.2: spack-gcc-15.2.Dockerfile
	podman build -f spack-gcc-15.2.Dockerfile -t localhost/spack-gcc-15.2:v2026_03 /
