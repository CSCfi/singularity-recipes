TMPDIR ?= /tmp
PREFIX := .

OPENMPI_SIF := $(PREFIX)/openmpi.sif
OPENMPI_DEF := openmpi.def

OPENMPI_OSU_SIF := $(PREFIX)/openmpi-osu.sif
OPENMPI_OSU_DEF := openmpi-osu.def

.PHONY: all
all: $(OPENMPI_SIF) $(OPENMPI_OSU_SIF)

$(OPENMPI_SIF): $(OPENMPI_DEF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

$(OPENMPI_OSU_SIF): $(OPENMPI_OSU_DEF) $(OPENMPI_SIF)
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(OPENMPI_SIF) $(OPENMPI_OSU_SIF)
