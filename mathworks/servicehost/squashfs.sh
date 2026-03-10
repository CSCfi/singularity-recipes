#!/usr/bin/env bash
set -e
TMP_DIR="$(mktemp -d)"
mkdir -p $TMP_DIR/$MSH_VERSION
unzip $ZIP_FILE -d $TMP_DIR/$MSH_VERSION
{
    echo "LatestDSInstallerVersion ${MSH_VERSION}";
    echo "LatestDSInstallRoot ${ROOT_DIR}/${MSH_VERSION}";
    echo "DSLauncherExecutable ${ROOT_DIR}/${MSH_VERSION}/bin/glnxa64/MathWorksServiceHost";
} >> $TMP_DIR/LatestInstall.info
mksquashfs $TMP_DIR $SQFS_FILE -all-root
rm -rf $TMP_DIR
