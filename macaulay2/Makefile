CONTAINER_SIF := macaulay2.sif
CONTAINER_DEF := macaulay2.def

.PHONY: all
all: $(CONTAINER_SIF)

$(CONTAINER_SIF): $(CONTAINER_DEF)
	apptainer build --fakeroot $@ $<

.PHONY: clean
clean:
	rm -f $(CONTAINER_SIF)
