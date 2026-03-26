FROM localhost/core:latest

RUN mkdir -p /appl/soft/spack/core/v2026_03
RUN --mount=type=bind,src=/appl/soft/spack/core/v2026_03,dst=/.appl \
    cp -r -d /.appl /appl/soft/spack/core/v2026_03
