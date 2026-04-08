FROM localhost/core-gpu-base:v2026_03
COPY /appl/soft/spack/core/v2026_03/compilers_eg /appl/soft/spack/core/v2026_03/compilers_eg
COPY /appl/soft/spack/core/v2026_03/g14cu129_eg /appl/soft/spack/core/v2026_03/g14cu129_eg
ENV PATH=/appl/soft/spack/core/v2026_03/compilers_eg/install_dir/linux-neoverse_v2/gcc-14.3.0-mwml3gfk4d3issqhvwxlt3oo2yaormhk/bin:/appl/soft/spack/core/v2026_03/compilers_eg/install_dir/linux-neoverse_v2/binutils-2.45-iovy4emqxvyusjxcmgq6fendyvwibfxz/bin:$PATH
ENV SPACK_ENV=/appl/soft/spack/core/v2026_03/g14cu129_eg;
ENV SPACK_ENV_VIEW=default;
ENV ACLOCAL_PATH=/appl/soft/spack/core/v2026_03/g14cu129_eg/views/share/aclocal:$ACLOCAL_PATH;
ENV CMAKE_PREFIX_PATH=/appl/soft/spack/core/v2026_03/g14cu129_eg/views:$CMAKE_PREFIX_PATH;
ENV MANPATH=/appl/soft/spack/core/v2026_03/g14cu129_eg/views/share/man:/appl/soft/spack/core/v2026_03/g14cu129_eg/views/man:$MANPATH;
ENV PATH=/appl/soft/spack/core/v2026_03/g14cu129_eg/views/bin:$PATH;
ENV PKG_CONFIG_PATH=/appl/soft/spack/core/v2026_03/g14cu129_eg/views/share/pkgconfig:/appl/soft/spack/core/v2026_03/g14cu129_eg/views/lib64/pkgconfig:/appl/soft/spack/core/v2026_03/g14cu129_eg/views/lib/pkgconfig:$PKG_CONFIG_PATH;
