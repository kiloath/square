FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN apt update -y \
&& apt install -y cmake pipx
ENV PIPX_HOME /opt/pipx
ENV PIPX_BIN_DIR /usr/local/bin
RUN pipx ensurepath \
&& pipx install conan
USER vscode
RUN conan profile detect
RUN cargo install cargo-update
