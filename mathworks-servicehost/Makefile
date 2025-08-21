MSH_VERSION := 2025.3.0.2
ROOT_DIR := /opt/mathworksservicehost
ZIP_FILE := mathworksservicehost.zip
SQFS_FILE := mathworksservicehost.sqfs

.PHONY: all
all: $(ZIP_FILE) $(SQFS_FILE)

$(ZIP_FILE):
	wget "https://ssd.mathworks.com/supportfiles/downloads/MathWorksServiceHost/v${MSH_VERSION}/release/glnxa64/managed_mathworksservicehost_${MSH_VERSION}_package_glnxa64.zip" --output-document $(ZIP_FILE)

$(SQFS_FILE):
	MSH_VERSION=$(MSH_VERSION) ZIP_FILE=$(ZIP_FILE) ROOT_DIR=$(ROOT_DIR) SQFS_FILE=$(SQFS_FILE) ./squashfs.sh

.PHONY: clean
clean:
	rm -f $(ZIP_FILE) $(SQFS_FILE)
