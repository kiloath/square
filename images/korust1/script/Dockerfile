FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
RUN rm -f /usr/local/share/ca-certificates/*.crt
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN apt update -y && apt upgrade -y
RUN rustup update
USER vscode
RUN cargo install cargo-update
RUN git config --global --add safe.directory '*'
RUN git config --global core.autocrlf true


