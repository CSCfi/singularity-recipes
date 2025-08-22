TMPDIR ?= /tmp
PREFIX := .

MATLAB_SIF := ../matlab/r2025a/rockylinux8/matlab.sif
MATLAB_PROXY_SIF := $(PREFIX)/matlab-proxy.sif
MATLAB_PROXY_DEF := matlab-proxy.def

.PHONY: all
all: $(MATLAB_PROXY_SIF)

$(MATLAB_PROXY_SIF): $(MATLAB_PROXY_DEF) $(MATLAB_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --build-arg MATLAB_SIF=$(MATLAB_SIF) $@ $<

.PHONY: clean
clean:
	rm -f $(MATLAB_PROXY_SIF)
