.PHONY: base
base: base.Dockerfile
	podman build -f base.Dockerfile -t localhost/base:v2026_03 --squash-all /

.PHONY: spack-gcc-14.3-cuda-12.9
spack-gcc-14.3-cuda-12.9: spack-gcc-14.3-cuda-12.9.Dockerfile
	podman build -f spack-gcc-14.3-cuda-12.9.Dockerfile -t localhost/spack-gcc-14.3-cuda-12.9:v2026_03 /
