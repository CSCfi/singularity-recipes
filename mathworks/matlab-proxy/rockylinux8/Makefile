TMPDIR ?= /tmp
PREFIX := .

MATLAB_VERSION := r2025a
MATLAB_SIF := ../../matlab/$(MATLAB_VERSION)/rockylinux8/matlab.sif
MATLAB_PROXY_SIF := $(PREFIX)/matlab-proxy-$(MATLAB_VERSION).sif
MATLAB_PROXY_DEF := matlab-proxy.def

.PHONY: all
all: $(MATLAB_PROXY_SIF)

$(MATLAB_PROXY_SIF): $(MATLAB_PROXY_DEF) $(MATLAB_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --build-arg MATLAB_SIF=$(MATLAB_SIF) $@ $<

.PHONY: clean
clean:
	rm -f $(MATLAB_PROXY_SIF)
