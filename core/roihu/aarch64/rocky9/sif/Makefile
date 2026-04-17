TMPDIR ?= /tmp
PREFIX := .

CORE_BASE_SIF := $(PREFIX)/core-gpu-deps.sif
CORE_BASE_DEF := core-gpu-deps.def

CORE_SPACK_SIF := $(PREFIX)/core-gpu-gcc-14.3-cuda-12.9.sif
CORE_SPACK_DEF := core-gpu-gcc-14.3-cuda-12.9.def

.PHONY: all
all: $(CORE_BASE_SIF) $(CORE_SPACK_SIF)

$(CORE_BASE_SIF): $(CORE_BASE_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression $@ $<

$(CORE_SPACK_SIF): $(CORE_SPACK_DEF) $(CORE_BASE_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp --mksquashfs-args=-no-compression --build-arg=BASE_IMAGE=$(CORE_BASE_SIF) $@ $<
