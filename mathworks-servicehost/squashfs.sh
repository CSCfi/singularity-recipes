#!/usr/bin/env bash
set -e
TMP_DIR="$(mktemp -d)"
mkdir -p $TMP_DIR/$VERSION
unzip $ZIP_FILE -d $TMP_DIR/$VERSION
{
    echo "LatestDSInstallerVersion ${VERSION}";
    echo "LatestDSInstallRoot ${ROOT_DIR}/${VERSION}";
    echo "DSLauncherExecutable ${ROOT_DIR}/${VERSION}/bin/glnxa64/MathWorksServiceHost";
} >> $TMP_DIR/LatestInstall.info
mksquashfs $TMP_DIR ${VERSION}.sqfs
rm -rf $TMP_DIR
