FROM localhost/core:v2026_03
COPY /appl/soft/spack/core/v2026_03 /appl/soft/spack/core/v2026_03
ENV PATH=/appl/soft/spack/core/v2026_03/compilers_ec/install_dir/linux-x86_64_v4/gcc-15.2.0-5v4dg5kq2xj3we7lmfsobmfvnc2l5mut/bin:/appl/soft/spack/core/v2026_03/compilers_ec/install_dir/linux-x86_64_v4/binutils-2.45-qmicimoddwomguj7tl2fgkp55fupbjge/bin:$PATH
ENV SPACK_ENV=/appl/soft/spack/core/v2026_03/gcc152_ec
ENV SPACK_ENV_VIEW=default
ENV ACLOCAL_PATH=/appl/soft/spack/core/v2026_03/gcc152_ec/views/share/aclocal:$ACLOCAL_PATH
ENV CMAKE_PREFIX_PATH=/appl/soft/spack/core/v2026_03/gcc152_ec/views:$CMAKE_PREFIX_PATH
ENV MANPATH=/appl/soft/spack/core/v2026_03/gcc152_ec/views/share/man:/appl/soft/spack/core/v2026_03/gcc152_ec/views/man:$MANPATH
ENV PATH=/appl/soft/spack/core/v2026_03/gcc152_ec/views/bin:$PATH
ENV PKG_CONFIG_PATH=/appl/soft/spack/core/v2026_03/gcc152_ec/views/share/pkgconfig:/appl/soft/spack/core/v2026_03/gcc152_ec/views/lib64/pkgconfig:/appl/soft/spack/core/v2026_03/gcc152_ec/views/lib/pkgconfig:$PKG_CONFIG_PATH
