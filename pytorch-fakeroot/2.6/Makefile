TMPDIR ?= /tmp
PREFIX := .

CONTAINER_SIF := $(PREFIX)/pytorch_2.6_csc.sif
CONTAINER_DEF := pytorch_2.6_csc.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF) requirements_pytorch_2.6.txt faiss-python-problem.patch
	apptainer build --fakeroot --bind=$(TMPDIR):/tmp $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
