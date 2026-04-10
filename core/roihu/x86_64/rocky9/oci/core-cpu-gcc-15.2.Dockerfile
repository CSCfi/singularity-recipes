FROM localhost/core-cpu-deps:v2026_03
COPY /appl/modulefiles/spack/x86_64/v2026_03 /appl/modulefiles/spack/x86_64/v2026_03
COPY /appl/soft/spack/core/v2026_03/x86_64/compilers_ec /appl/soft/spack/core/v2026_03/x86_64/compilers_ec
COPY /appl/soft/spack/core/v2026_03/x86_64/gcc152_ec /appl/soft/spack/core/v2026_03/x86_64/gcc152_ec
RUN cat > /opt/activate.sh << 'EOF' \
export PATH=/appl/soft/spack/core/v2026_03/x86_64/compilers_ec/install_dir/linux-zen5/binutils-2.46.0-cqyyzre4ylslq3peezmsn6vdg3exfkkp/bin:$PATH \
. /usr/share/lmod/9.1.2/init/bash \
module use /appl/modulefiles/spack/x86_64/v2026_03/Core \
module load gcc/15.2.0 \
module load ucx \
module load openblas/0.3.30 \
module load openmpi/5.0.10 \
EOF
