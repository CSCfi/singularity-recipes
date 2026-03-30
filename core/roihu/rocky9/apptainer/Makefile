TMPDIR ?= /tmp
PREFIX := .

CORE_BASE_SIF := $(PREFIX)/core-cpu-base.sif
CORE_BASE_DEF := core-cpu-base.def

CORE_SPACK_SIF := $(PREFIX)/core-cpu-gcc-15.2.sif
CORE_SPACK_DEF := core-cpu-gcc-15.2.def

OSU_SIF := $(PREFIX)/osu.sif
OSU_DEF := osu.def

.PHONY: core
core: $(CORE_BASE_SIF)

.PHONY: spack-env
spack-env: $(CORE_SPACK_SIF)

.PHONY: osu
osu: $(OSU_SIF)

.PHONY: all
all: $(CORE_BASE_SIF) $(CORE_SPACK_SIF)

$(CORE_BASE_SIF): $(CORE_BASE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(CORE_SPACK_SIF): $(CORE_SPACK_DEF) $(CORE_BASE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression --build-arg=BASE_IMAGE=$(CORE_BASE_SIF) $@ $<

$(OSU_SIF): $(OSU_DEF) $(CORE_SPACK_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression --build-arg=BASE_IMAGE=$(CORE_SPACK_SIF) $@ $<
