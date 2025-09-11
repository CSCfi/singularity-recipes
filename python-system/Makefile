TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/python-system.sif
CONTAINER_DEF := python-system.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
