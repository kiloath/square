FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
RUN rm -f /usr/local/share/ca-certificates/*.crt
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN apt update
USER vscode
RUN rustup target add x86_64-pc-windows-gnu
RUN rustup target add wasm32-unknown-unknown
RUN cargo install cargo-update
RUN cargo install cargo-generate
RUN cargo install salvo-cli
RUN cargo install cross
RUN git config --global --add safe.directory '*'
RUN git config --global core.autocrlf true
RUN echo 'export PROMPT_DIRTRIM=1' >> ~/.bashrc

