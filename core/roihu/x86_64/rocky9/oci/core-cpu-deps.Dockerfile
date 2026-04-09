FROM docker://rockylinux/rockylinux:9.7

COPY /etc/yum.repos.d/AppStream.repo /etc/yum.repos.d/AppStream.repo
COPY /etc/yum.repos.d/BullSequana.repo /etc/yum.repos.d/BullSequana.repo
COPY /etc/yum.repos.d/BaseOS.repo /etc/yum.repos.d/BaseOS.repo
COPY /etc/yum.repos.d/codeready-builder.repo /etc/yum.repos.d/codeready-builder.repo
COPY /etc/yum.repos.d/bull-extra.repo /etc/yum.repos.d/bull-extra.repo
COPY /etc/yum.repos.d/CSC_general.repo /etc/yum.repos.d/CSC_general.repo
COPY /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo
COPY /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
COPY /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9
COPY /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public
COPY /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public

COPY /usr/lib64/liblnetconfig.a /usr/lib64/liblnetconfig.a
COPY /usr/lib64/liblnetconfig.so.4.0.0 /usr/lib64/liblnetconfig.so.4.0.0
RUN ln -s liblnetconfig.so.4.0.0 /usr/lib64/liblnetconfig.so.4
RUN ln -s liblnetconfig.so.4.0.0 /usr/lib64/liblnetconfig.so
COPY /usr/lib64/liblustreapi.a /usr/lib64/liblustreapi.a
COPY /usr/lib64/liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so.1.0.0
RUN ln -s liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so.1
RUN ln -s liblustreapi.so.1.0.0 /usr/lib64/liblustreapi.so
COPY /opt/pmix/5.0.7 /opt/pmix/5.0.7
COPY /opt/knem-1.1.4.90mlnx4 /opt/knem-1.1.4.90mlnx4

RUN chmod a+r /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release && \
    chmod a+r /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9 && \
    chmod a+r /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-bull-hpc-factory.public && \
    chmod a+r /etc/pki/bull-rpm-gpg/RPM-GPG-KEY-eviden-bds-factory.public && \
    update-crypto-policies --set LEGACY && \
    dnf update -y && \
    dnf install -y --allowerasing \
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
        Lmod-9.1.2 \
        && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/AppStream.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/BullSequana.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/BaseOS.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/codeready-builder.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/bull-extra.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/CSC_general.repo && \
    sed -i 's/^enabled = 1/enabled = 0/' /etc/yum.repos.d/epel.repo
