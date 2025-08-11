TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/blender_rocky.sif
CONTAINER_DEF := blender_rocky.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
