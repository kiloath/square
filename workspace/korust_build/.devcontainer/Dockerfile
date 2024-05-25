FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN apt update \
&& apt install -yq libwebkit2gtk-4.1-dev \
build-essential \
curl \
wget \
file \
libssl-dev \
libayatana-appindicator3-dev \
librsvg2-dev
RUN rustup toolchain install nightly
RUN rustup default nightly
RUN rustup target add wasm32-unknown-unknown
RUN rustup target add x86_64-pc-windows-gnu
RUN cargo install wasm-bindgen-cli
RUN cargo install wasm-pack
RUN cargo install trunk
RUN cargo install miniserve
RUN cargo install cross
RUN cargo install cargo-update
RUN cargo install cargo-leptos
RUN cargo install tauri-cli --version '^2.0.0-beta'
RUN cargo install create-tauri-app
ENV LEPTOS_CARGO_GENERATE_VERSION=v0.21.0
ENV LEPTOS_SASS_VERSION=1.71.0
