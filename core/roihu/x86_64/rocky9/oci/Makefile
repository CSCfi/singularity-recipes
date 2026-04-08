.PHONY: core-cpu-base
core-cpu-base: core-cpu-base.Dockerfile
	podman build -f core-cpu-base.Dockerfile -t localhost/core-cpu-base:v2026_03 --squash-all /

.PHONY: core-cpu-gcc-15.2
core-cpu-gcc-15.2: core-cpu-gcc-15.2.Dockerfile
	podman build -f core-cpu-gcc-15.2.Dockerfile -t localhost/core-cpu-gcc-15.2:v2026_03 /
