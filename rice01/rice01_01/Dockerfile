FROM mcr.microsoft.com/devcontainers/rust:1-1-bullseye
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN rustup target add wasm32-unknown-unknown
RUN rustup target add x86_64-pc-windows-gnu
RUN cargo install wasm-bindgen-cli
RUN cargo install wasm-pack
RUN cargo install trunk
RUN cargo install miniserve
RUN cargo install cross