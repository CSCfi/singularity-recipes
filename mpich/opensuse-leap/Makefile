TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/mpich.sif
CONTAINER_DEF := mpich.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	singularity build --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
