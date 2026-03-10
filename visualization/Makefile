TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/vgl_base_rocky.sif
CONTAINER_DEF := vgl_base_rocky.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF) getEglCard eglDebugInfo getX11Display vglrun_wrapper
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
