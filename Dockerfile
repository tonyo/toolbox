FROM alpine:3.17

RUN apk add \
    apache2-utils \
    bash \
    bind-tools \
    busybox-extras \
    ca-certificates \
    curl \
    htop \
    iftop \
    jq \
    ltrace \
    mtr \
    nmap \
    nmap-ncat \
    strace \
    tcpdump \
    tree \
    vim \
    wget \
    yq \
    --no-cache

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]
