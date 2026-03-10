CONTAINER_SIF := miniforge.sif
CONTAINER_DEF := miniforge.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
