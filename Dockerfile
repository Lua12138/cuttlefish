FROM debian:11.7

WORKDIR /workspaces

USER root

RUN apt update && \
    apt install -y git devscripts config-package-dev debhelper-compat golang curl

COPY build-cuttlefish.sh .

RUN bash build-cuttlefish.sh
