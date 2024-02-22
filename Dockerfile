ARG BASH_TAG=5.2.26
FROM bash:${BASH_TAG}
COPY src /usr/local/bin
