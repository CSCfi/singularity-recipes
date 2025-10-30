TMPDIR ?= /tmp
PREFIX := .

MATLAB_SIF := $(PREFIX)/matlab.sif
MATLAB_DEF := matlab.def

.PHONY: all
all: $(MATLAB_SIF)

$(MATLAB_SIF): $(MATLAB_DEF) base-dependencies.txt mpm_input.txt
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(MATLAB_SIF)
