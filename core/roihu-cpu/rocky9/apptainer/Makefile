TMPDIR ?= /tmp
PREFIX := .

CORE_SIF := $(PREFIX)/core-cpu-base.sif
CORE_DEF := core-cpu-base.def

SPACK_ENV_SIF := $(PREFIX)/core-cpu-gcc-15.2.sif
SPACK_ENV_DEF := copy-cpu-gcc-15.2.def

OSU_SIF := $(PREFIX)/osu.sif
OSU_DEF := osu.def

.PHONY: core
core: $(CORE_SIF)

.PHONY: spack-env
spack-env: $(SPACK_ENV_SIF)

.PHONY: osu
osu: $(OSU_SIF)

.PHONY: all
all: $(CORE_SIF) $(SPACK_ENV_SIF)

$(CORE_SIF): $(CORE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(SPACK_ENV_SIF): $(SPACK_ENV_DEF) $(CORE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression $@ $<

$(OSU_SIF): $(OSU_DEF) $(SPACK_ENV_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression $@ $<

.PHONY: clean
clean:
	rm -f $(CORE_SIF)
