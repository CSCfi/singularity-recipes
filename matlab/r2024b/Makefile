TMPDIR ?= /tmp
PREFIX := $(PWD)

MATLAB_SIF := $(PREFIX)/matlab.sif
MATLAB_DEF := matlab.def

MATLAB_PROXY_SIF := $(PREFIX)/matlab-proxy.sif
MATLAB_PROXY_DEF := matlab-proxy.def

.PHONY: all
all: $(MATLAB_SIF) $(MATLAB_PROXY_SIF)

$(MATLAB_SIF): $(MATLAB_DEF) base-dependencies.txt mpm_input.txt
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(MATLAB_PROXY_SIF): $(MATLAB_PROXY_DEF) $(MATLAB_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(MATLAB_SIF) $(MATLAB_PROXY_SIF)
