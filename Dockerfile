FROM alpine:3.20

LABEL org.opencontainers.image.source=https://github.com/tonyo/toolbox
LABEL org.opencontainers.image.url=https://github.com/tonyo/toolbox
LABEL org.opencontainers.image.description="Container image with a bunch of debugging tools"
LABEL org.opencontainers.image.licenses=MIT

ENV LANG=en_US.UTF-8

RUN apk add \
    apache2-utils \
    bash \
    bat \
    bind-tools \
    btop \
    busybox-extras \
    ca-certificates \
    conntrack-tools \
    curl \
    fzf \
    htop \
    iftop \
    iproute2 \
    jq \
    ltrace \
    mtr \
    nano \
    nmap \
    nmap-ncat \
    postgresql-client \
    procps \
    ripgrep \
    socat \
    sqlite \
    strace \
    tcpdump \
    tree \
    vim \
    wget \
    yq \
    --no-cache

COPY sleep-wait /usr/local/bin/sleep-wait

# Just in case: symlink sleep-wait
RUN ln -s /usr/local/bin/sleep-wait /usr/local/bin/wait-sleep

# Initialize "fzf"
RUN echo 'eval "$(fzf --bash)"' >> /etc/bash/bashrc

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]
