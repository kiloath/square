FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
RUN rustup target add wasm32-unknown-unknown
RUN cargo install --locked trunk
RUN cargo install --locked cargo-leptos
RUN cargo install cargo-generate
RUN chmod +w /usr/local/cargo
ENV LEPTOS_CARGO_GENERATE_VERSION=v0.21.0
ENV LEPTOS_SASS_VERSION=1.71.0
