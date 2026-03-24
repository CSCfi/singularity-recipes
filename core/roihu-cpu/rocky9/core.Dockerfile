FROM docker://rockylinux/rockylinux:9.7

# Include repositories from host
COPY /etc/yum.repos.d/AppStream.repo /etc/yum.repos.d/AppStream.repo
COPY /etc/yum.repos.d/BullSequana.repo /etc/yum.repos.d/BullSequana.repo
#COPY /etc/yum.repos.d/CSC_security.repo /etc/yum.repos.d/CSC_security.repo
#COPY /etc/yum.repos.d/smc.repo /etc/yum.repos.d/smc.repo
COPY /etc/yum.repos.d/BaseOS.repo /etc/yum.repos.d/BaseOS.repo
COPY /etc/yum.repos.d/codeready-builder.repo /etc/yum.repos.d/codeready-builder.repo
COPY /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo
#COPY /etc/yum.repos.d/smc_local.repo /etc/yum.repos.d/smc_local.repo
COPY /etc/yum.repos.d/bull-extra.repo /etc/yum.repos.d/bull-extra.repo
COPY /etc/yum.repos.d/CSC_general.repo /etc/yum.repos.d/CSC_general.repo
#COPY /etc/yum.repos.d/redhat.repo /etc/yum.repos.d/redhat.repo

# Include repository gpg keys
COPY /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
RUN chmod a+r /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release

COPY /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public
RUN chmod a+r /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public

COPY /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public
RUN chmod a+r /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public

# Install spack externals
RUN dnf update -y
RUN update-crypto-policies --set LEGACY && \
    dnf install -y --allowerasing rdma-core hwloc-2.4.1 m4-1.4.19 openssl-3.5.1 make-4.3 sed-4.8 diffutils-3.7 coreutils-8.32 autoconf-2.69 gawk-5.1.0 automake-1.16.2 binutils-2.35.2 gettext-0.21 groff-1.22.4 tar-1.34 curl-7.76.1 cmake-3.26.5 openssh-8.7p1 pkgconf-1.7.3 findutils-4.8.0 git-2.47.3 libevent-2.1.12 && \
    update-crypto-policies --set DEFAULT
COPY /usr/lib64/liblustreapi.a /usr/lib64/liblustreapi.a
COPY /usr/lib64/liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so.1.0.0
RUN ln -s liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so.1
RUN ln -s liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so
COPY /opt/pmix/5.0.7 /opt/pmix/5.0.7
COPY /opt/knem-1.1.4.90mlnx4 /opt/knem-1.1.4.90mlnx4
