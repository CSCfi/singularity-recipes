TMPDIR ?= /tmp
PREFIX := .

BASE_SIF := $(PREFIX)/base.sif
BASE_DEF := base.def

CORE_SIF := $(PREFIX)/core.sif
CORE_DEF := core.def

SPACK_ENV_SIF := $(PREFIX)/spack-env.sif
SPACK_ENV_DEF := spack-env.def

OSU_SIF := $(PREFIX)/osu.sif
OSU_DEF := osu.def

.PHONY: core
core: $(BASE_SIF) $(CORE_SIF)

.PHONY: spack-env
spack-env: $(SPACK_ENV_SIF)

.PHONY: osu
osu: $(OSU_SIF)

.PHONY: all
all: $(BASE_SIF) $(CORE_SIF) $(SPACK_ENV_SIF)

$(BASE_SIF): $(BASE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(CORE_SIF): $(CORE_DEF) $(BASE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(SPACK_ENV_SIF): $(SPACK_ENV_DEF) $(CORE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(OSU_SIF): $(OSU_DEF) $(SPACK_ENV_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(BASE_SIF) $(CORE_SIF)
