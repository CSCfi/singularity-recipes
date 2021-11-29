# CloudCompare

!!!
**Currently, Plugins are not working even though they should be installed**
!!!


CloudCompare 2.11.3 installed to Puhti in November 2021 using `cloudcompare.def` file (sif build on VM and moved to Puhti).

https://github.com/tyson-swetnam/cloudcompare-docker used as base image, but this had issues with Qt (older kernel?) , therefore additions were needed, also `SINGULARITYENV_DISPLAY=$DISPLAY` needs to be set before starting the container

Also tried container solutions with installation of CloudCompare via `snap` and `flatpak` (suggested by http://www.cloudcompare.org/release/) in Ubuntu base image, which both failed.