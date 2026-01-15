TMPDIR ?= /tmp
PREFIX := .

BASE_SIF := $(PREFIX)/base.sif
BASE_DEF := base.def

CORE_SIF := $(PREFIX)/core.sif
CORE_DEF := core.def

.PHONY: all
all: $(BASE_SIF) $(CORE_SIF)

$(BASE_SIF): $(BASE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(CORE_SIF): $(CORE_DEF) $(BASE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(BASE_SIF) $(CORE_SIF)
