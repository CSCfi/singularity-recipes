.PHONY: core-cpu-deps
core-cpu-deps: core-cpu-deps.Dockerfile
	podman build -f core-cpu-deps.Dockerfile -t localhost/core-cpu-deps:v2026_03 --squash-all /
	podman tag localhost/core-cpu-deps:v2026_03 satama.csc.fi/r_installation_spack/core-cpu-deps:v2026_03

.PHONY: core-cpu-gcc-15.2
core-cpu-gcc-15.2: core-cpu-gcc-15.2.Dockerfile
	podman build -f core-cpu-gcc-15.2.Dockerfile -t localhost/core-cpu-gcc-15.2:v2026_03 /
	podman tag localhost/core-cpu-gcc-15.2:v2026_03 satama.csc.fi/r_installation_spack/core-cpu-gcc-15.2:v2026_03
