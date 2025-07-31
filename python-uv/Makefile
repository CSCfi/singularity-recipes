CONTAINER_SIF := python-uv.sif
CONTAINER_DEF := python-uv.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
