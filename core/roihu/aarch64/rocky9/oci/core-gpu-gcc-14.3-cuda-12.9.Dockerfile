FROM localhost/core-gpu-deps:v2026_03
COPY /appl/modulefiles/spack/aarch64 /appl/modulefiles/spack/aarch64
COPY /appl/soft/spack/core/v2026_03/compilers_eg /appl/soft/spack/core/v2026_03/compilers_eg
COPY /appl/soft/spack/core/v2026_03/g14cu129_eg /appl/soft/spack/core/v2026_03/g14cu129_eg
RUN cat > /opt/activate.sh << 'EOF' \
export PATH=/appl/soft/spack/core/v2026_03/compilers_eg/install_dir/linux-neoverse_v2/binutils-2.45-iovy4emqxvyusjxcmgq6fendyvwibfxz/bin:$PATH \
. /usr/share/lmod/9.1.2/init/bash \
module use /appl/modulefiles/spack/aarch64/Core \
module load gcc/14.3.0 \
module load openblas \
module load openmpi \
module load cuda \
EOF
