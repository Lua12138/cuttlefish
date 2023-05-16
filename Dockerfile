FROM debian:11.7

WORKDIR /workspaces

USER root

RUN apt update && \
    apt install -y git devscripts config-package-dev debhelper-compat golang curl

RUN git clone https://github.com/google/android-cuttlefish

COPY build-cuttlefish.sh .

RUN build-cuttlefish.sh
