.PHONY: core-gpu-deps
core-gpu-deps: core-gpu-deps.Dockerfile
	podman build -f core-gpu-deps.Dockerfile -t localhost/core-gpu-deps:v2026_03 --squash-all /
	podman tag localhost/core-gpu-deps:v2026_03 satama.csc.fi/r_installation_spack/core-gpu-deps:v2026_03

.PHONY: core-gpu-gcc-14.3-cuda-12.9
core-gpu-gcc-14.3-cuda-12.9: core-gpu-gcc-14.3-cuda-12.9.Dockerfile
	podman build -f core-gpu-gcc-14.3-cuda-12.9.Dockerfile -t localhost/core-gpu-gcc-14.3-cuda-12.9:v2026_03 /
	podman tag localhost/core-gpu-gcc-14.3-cuda-12.9:v2026_03 satama.csc.fi/r_installation_spack/core-gpu-gcc-14.3-cuda-12.9:v2026_03
