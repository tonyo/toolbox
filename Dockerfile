FROM alpine:3.17

LABEL org.opencontainers.image.source=https://github.com/tonyo/toolbox
LABEL org.opencontainers.image.url=https://github.com/tonyo/toolbox
LABEL org.opencontainers.image.description="Container image with a bunch of debugging tools"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add \
    apache2-utils \
    bash \
    bind-tools \
    busybox-extras \
    ca-certificates \
    conntrack-tools \
    curl \
    htop \
    iftop \
    jq \
    ltrace \
    mtr \
    nmap \
    nmap-ncat \
    procps \
    strace \
    tcpdump \
    tree \
    vim \
    wget \
    yq \
    --no-cache

COPY sleep-wait /usr/local/bin/sleep-wait

# Just in case
RUN ln -s /usr/local/bin/sleep-wait /usr/local/bin/wait-sleep

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]
