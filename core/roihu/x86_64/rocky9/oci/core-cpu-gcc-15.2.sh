#!/usr/bin/env bash
set -eu

CONTAINER=$(buildah from localhost/core-cpu-deps:v2026_03)
ROOTFS=$(buildah mount $CONTAINER)

rsync --archive --mkpath /appl/modulefiles/spack/x86_64/v2026_03 "$ROOTFS/appl/modulefiles/spack/x86_64"

rsync --archive --mkpath --exclude="gcc-14.1.0-*" --exclude="gcc-14.3.0-*" --exclude="gcc-13.4.0-*" --exclude="aocc-5.0.0-*" --exclude="aocc-5.1.0-*" /appl/soft/spack/core/v2026_03/x86_64/compilers_ec "$ROOTFS/appl/soft/spack/core/v2026_03/x86_64"

rsync --archive --mkpath /appl/soft/spack/core/v2026_03/x86_64/gcc152_ec "$ROOTFS/appl/soft/spack/core/v2026_03/x86_64"

cat > $ROOTFS/opt/activate.sh << 'EOF'
export PATH=/appl/soft/spack/core/v2026_03/x86_64/compilers_ec/install_dir/linux-zen5/binutils-2.46.0-cqyyzre4ylslq3peezmsn6vdg3exfkkp/bin:$PATH
. /usr/share/lmod/9.1.2/init/bash
module use /appl/modulefiles/spack/x86_64/v2026_03/Core
module load gcc/15.2.0
module load ucx/1.20.0
module load openblas/0.3.30
module load openmpi/5.0.10
EOF

buildah unmount $CONTAINER

buildah commit $CONTAINER localhost/core-cpu-gcc-15.2:v2026_03

buildah tag localhost/core-cpu-gcc-15.2:v2026_03 satama.csc.fi/r_installation_spack/core-cpu-gcc-15.2:v2026_03
