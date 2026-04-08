.PHONY: core-cpu-deps
core-cpu-deps: core-cpu-deps.Dockerfile
	podman build -f core-cpu-deps.Dockerfile -t localhost/core-cpu-deps:v2026_03 --squash-all /

.PHONY: core-cpu-gcc-15.2
core-cpu-gcc-15.2: core-cpu-gcc-15.2.Dockerfile
	podman build -f core-cpu-gcc-15.2.Dockerfile -t localhost/core-cpu-gcc-15.2:v2026_03 /
