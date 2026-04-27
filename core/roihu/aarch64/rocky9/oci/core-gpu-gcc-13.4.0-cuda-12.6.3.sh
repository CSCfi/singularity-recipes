#!/usr/bin/env bash
set -eu

CONTAINER=$(buildah from localhost/core-gpu-deps:v2026_03)
ROOTFS=$(buildah mount $CONTAINER)

rsync --archive --mkpath --exclude="gcc/15.2.0*" --exclude="gcc/14.3.0*" --exclude="git-lfs/" --exclude="nvhpc/" --exclude="gromacs/" /appl/modulefiles/spack/aarch64/v2026_03 "$ROOTFS/appl/modulefiles/spack/aarch64"

rsync --archive --mkpath --exclude="gcc-15.2.0-*" --exclude="gcc-14.3.0-*" /appl/soft/spack/core/v2026_03/aarch64/compilers_eg "$ROOTFS/appl/soft/spack/core/v2026_03/aarch64"

rsync --archive --mkpath /appl/soft/spack/core/v2026_03/aarch64/g13cu126_eg "$ROOTFS/appl/soft/spack/core/v2026_03/aarch64"

cat > $ROOTFS/opt/activate.sh << EOF
export PATH=/appl/soft/spack/core/v2026_03/aarch64/compilers_eg/install_dir/neoverse_v2/gcc-11.5.0/binutils-2.45-iovy4e/bin:\$PATH
. /usr/share/lmod/9.1.2/init/bash
module use /appl/modulefiles/spack/aarch64/v2026_03/Core
module load gcc/13.4.0
module load cuda/12.6.3
module load openblas/0.3.30
module load openmpi/5.0.10
EOF

buildah unmount $CONTAINER

buildah commit $CONTAINER localhost/core-gpu-gcc-13.4.0-cuda-12.6.3:v2026_03

buildah tag localhost/core-gpu-gcc-13.4.0-cuda-12.6.3:v2026_03 satama.csc.fi/r_installation_spack/core-gpu-gcc-13.4.0-cuda-12.6.3:v2026_03
