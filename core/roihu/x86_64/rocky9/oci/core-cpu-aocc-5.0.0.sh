#!/usr/bin/env bash
set -eu

CONTAINER=$(buildah from localhost/core-cpu-deps:v2026_03)
ROOTFS=$(buildah mount $CONTAINER)

rsync --archive --mkpath --exclude="gcc/" --exclude="aocc/5.1.0" --exclude="gromacs/" --exclude="cp2k/" --exclude="plumed/" /appl/modulefiles/spack/x86_64/v2026_03 "$ROOTFS/appl/modulefiles/spack/x86_64"

rsync --archive --mkpath --exclude="gcc-14.1.0-*" --exclude="gcc-14.3.0-*" --exclude="gcc-13.4.0-*" --exclude="gcc-15.2.0-*" --exclude="aocc-5.1.0-*" /appl/soft/spack/core/v2026_03/x86_64/compilers_ec "$ROOTFS/appl/soft/spack/core/v2026_03/x86_64"

rsync --archive --mkpath /appl/soft/spack/core/v2026_03/x86_64/aocc50_ec "$ROOTFS/appl/soft/spack/core/v2026_03/x86_64"

cat > $ROOTFS/opt/activate.sh << EOF
export PATH=/appl/soft/spack/core/v2026_03/x86_64/compilers_ec/install_dir/linux-zen5/binutils-2.46.0-cqyyzre4ylslq3peezmsn6vdg3exfkkp/bin:\$PATH
. /usr/share/lmod/9.1.2/init/bash
module use /appl/modulefiles/spack/x86_64/v2026_03/Core
module load aocc/5.0.0
module load openmpi/5.0.10
EOF

buildah unmount $CONTAINER

buildah commit $CONTAINER localhost/core-cpu-aocc-5.0.0:v2026_03

buildah tag localhost/core-cpu-aocc-5.0.0:v2026_03 satama.csc.fi/r_installation_spack/core-cpu-aocc-5.0.0:v2026_03
