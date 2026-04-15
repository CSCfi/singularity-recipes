#!/usr/bin/env bash
set -eu

CONTAINER=$(buildah from localhost/core-gpu-deps:v2026_03)
ROOTFS=$(buildah mount $CONTAINER)

rsync --archive --mkpath --exclude="gcc/15.2.0*" --exclude="gcc/13.4.0*" --exclude="git-lfs/" --exclude="nvhpc/" /appl/modulefiles/spack/aarch64 "$ROOTFS/appl/modulefiles/spack"

rsync --archive --mkpath --exclude="gcc-15.2.0-*" --exclude="gcc-13.4.0-*" /appl/soft/spack/core/v2026_03/compilers_eg "$ROOTFS/appl/soft/spack/core/v2026_03"

rsync --archive --mkpath /appl/soft/spack/core/v2026_03/g14cu129_eg "$ROOTFS/appl/soft/spack/core/v2026_03"

cat > $ROOTFS/opt/activate.sh << EOF
export PATH=/appl/soft/spack/core/v2026_03/compilers_eg/install_dir/linux-neoverse_v2/binutils-2.45-iovy4emqxvyusjxcmgq6fendyvwibfxz/bin:\$PATH \
. /usr/share/lmod/9.1.2/init/bash \
module use /appl/modulefiles/spack/aarch64/Core \
module load gcc/14.3.0 \
module load cuda/12.9.1 \
module load openblas/0.3.30 \
module load openmpi/5.0.8 \
EOF

buildah unmount $CONTAINER

buildah commit $CONTAINER localhost/core-gpu-gcc-14.3-cuda-12.9:v2026_03

buildah tag localhost/core-gpu-gcc-14.3-cuda-12.9:v2026_03 satama.csc.fi/r_installation_spack/core-gpu-gcc-14.3-cuda-12.9:v2026_03
