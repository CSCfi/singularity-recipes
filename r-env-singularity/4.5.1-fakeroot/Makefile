TMPDIR ?= /tmp
PREFIX := .

R_SIF := $(PREFIX)/r-env-451.sif
R_DEF := 451.def

.PHONY: all
all: $(R_SIF)

$(R_SIF): $(R_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(R_SIF)
