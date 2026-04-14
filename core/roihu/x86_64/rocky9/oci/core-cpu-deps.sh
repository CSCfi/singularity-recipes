#!/usr/bin/env bash
set -eu

CONTAINER=$(buildah from docker://rockylinux/rockylinux:9.7)
ROOTFS=$(buildah mount $CONTAINER)

rsync --archive --mkpath /etc/yum.repos.d/AppStream.repo $ROOTFS/etc/yum.repos.d/AppStream.repo
rsync --archive --mkpath /etc/yum.repos.d/BullSequana.repo $ROOTFS/etc/yum.repos.d/BullSequana.repo
rsync --archive --mkpath /etc/yum.repos.d/BaseOS.repo $ROOTFS/etc/yum.repos.d/BaseOS.repo
rsync --archive --mkpath /etc/yum.repos.d/codeready-builder.repo $ROOTFS/etc/yum.repos.d/codeready-builder.repo
rsync --archive --mkpath /etc/yum.repos.d/bull-extra.repo $ROOTFS/etc/yum.repos.d/bull-extra.repo
rsync --archive --mkpath /etc/yum.repos.d/CSC_general.repo $ROOTFS/etc/yum.repos.d/CSC_general.repo
rsync --archive --mkpath /etc/yum.repos.d/epel.repo $ROOTFS/etc/yum.repos.d/epel.repo
rsync --archive --mkpath /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release $ROOTFS/etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
rsync --archive --mkpath /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9 $ROOTFS/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9
rsync --archive --mkpath /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public $ROOTFS/etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public
rsync --archive --mkpath /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public $ROOTFS/etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public

rsync --archive --mkpath /usr/lib64/liblnetconfig.a $ROOTFS/usr/lib64/liblnetconfig.a
rsync --archive --mkpath /usr/lib64/liblnetconfig.so.4.0.0 $ROOTFS/usr/lib64/liblnetconfig.so.4.0.0
rsync --archive --mkpath /usr/lib64/liblnetconfig.so.4 $ROOTFS/usr/lib64/liblnetconfig.so.4
rsync --archive --mkpath /usr/lib64/liblnetconfig.so $ROOTFS/usr/lib64/liblnetconfig.so
rsync --archive --mkpath /usr/lib64/liblustreapi.a $ROOTFS/usr/lib64/liblustreapi.a
rsync --archive --mkpath /usr/lib64/liblustreapi.so.1.0.0 $ROOTFS/usr/lib64/liblustreapi.so.1.0.0
rsync --archive --mkpath /usr/lib64/liblustreapi.so.1 $ROOTFS/usr/lib64/liblustreapi.so.1
rsync --archive --mkpath /usr/lib64/liblustreapi.so $ROOTFS/usr/lib64/liblustreapi.so
rsync --archive --mkpath /opt/pmix/5.0.7 $ROOTFS/opt/pmix
rsync --archive --mkpath /opt/knem-1.1.4.90mlnx4 $ROOTFS/opt

buildah run $CONTAINER -- update-crypto-policies --set LEGACY
buildah run $CONTAINER -- dnf update -y
buildah run $CONTAINER -- dnf install -y --allowerasing \
    glibc-2.34 \
    glibc-devel-2.34 \
    m4-1.4.19 \
    openssl-3.5.1 \
    openssl-devel-3.5.1 \
    make-4.3 \
    sed-4.8 \
    diffutils-3.7 \
    coreutils-8.32 \
    autoconf-2.69 \
    gawk-5.1.0 \
    automake-1.16.2 \
    binutils-2.35.2 \
    gettext-0.21 \
    gettext-devel-0.21 \
    groff-1.22.4 \
    tar-1.34 \
    curl-7.76.1 \
    libcurl-devel-7.76.1 \
    cyrus-sasl-gssapi-2.1.27 \
    openldap-2.6.8 \
    libnghttp2-1.43.0 \
    cmake-3.26.5 \
    openssh-8.7p1 \
    pkgconf-1.7.3 \
    findutils-4.8.0 \
    git-2.47.3 \
    libevent-2.1.12 \
    libevent-devel-2.1.12 \
    rdma-core-2510.0.10 \
    rdma-core-devel-2510.0.10 \
    libxpmem-2510.0.16 \
    libxpmem-devel-2510.0.16 \
    Lmod-9.1.2

buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/AppStream.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/BullSequana.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/BaseOS.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/codeready-builder.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/bull-extra.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/CSC_general.repo
buildah run $CONTAINER -- sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/epel.repo

buildah unmount $CONTAINER

buildah commit --squash $CONTAINER localhost/core-cpu-deps:v2026_03

buildah tag localhost/core-cpu-deps:v2026_03 satama.csc.fi/r_installation_spack/core-cpu-deps:v2026_03
