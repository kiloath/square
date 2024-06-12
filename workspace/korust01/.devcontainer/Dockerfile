FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN mkdir /usr/local/cargo/registry
RUN chown -R vscode /usr/local/cargo
USER vscode
