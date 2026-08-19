TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/alphafold3.sif
CONTAINER_DEF := alphafold3.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot --bind=$(shell mktemp -d):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
