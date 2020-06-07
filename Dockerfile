FROM debian:unstable-slim

LABEL maintainer="solankemn@gmail.com"

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
    traceroute \
    curl \
    wget \
    httpie \
    dnsutils \
    netcat-openbsd \
    jq \
    nmap \ 
    net-tools \
    tcpdump \
    mtr-tiny \
    iperf3 \
    git \
    iproute2 \
    siege \
    openssl \
    openssh-client \ 
    vim \
    less \
    && rm -rf /var/lib/apt/lists/*

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/manjulsolanke/k8s-knife"
