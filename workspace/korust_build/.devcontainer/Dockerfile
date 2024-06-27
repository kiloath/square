FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
ENV PIPX_HOME /opt/pipx
ENV PIPX_BIN_DIR /usr/local/bin
ENV LEPTOS_CARGO_GENERATE_VERSION=v0.21.0
ENV LEPTOS_SASS_VERSION=1.71.0
ENV LEPTOS_SITE_ROOT=site
RUN apt update \
&& apt install -yq cmake pipx \
libwebkit2gtk-4.1-dev \
build-essential \
curl \
wget \
file \
libssl-dev \
libayatana-appindicator3-dev \
librsvg2-dev \
binaryen
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN /bin/bash -c "source /root/.nvm/nvm.sh \
&& nvm install node \
&& npm install -g sass"
RUN pipx ensurepath \
&& pipx install conan
USER vscode
RUN conan profile detect
RUN conan remote update conancenter --insecure
RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown
RUN rustup target add x86_64-pc-windows-gnu
RUN cargo install cross
RUN cargo install miniserve
RUN cargo install cargo-update
RUN cargo install cargo-generate
RUN cargo install wasm-bindgen-cli
RUN cargo install wasm-pack
RUN cargo install --locked trunk
RUN cargo install --locked cargo-leptos
RUN cargo install create-tauri-app
RUN cargo install uniffi-bindgen-cpp --git https://github.com/NordSecurity/uniffi-bindgen-cpp --tag v0.5.0+v0.25.0
RUN git config --global --add safe.directory '*'
RUN git config --global core.autocrlf true
RUN echo 'export PROMPT_DIRTRIM=1' >> ~/.bashrc
RUN echo "tools.files.download:verify=False" >> ~/.conan2/global.conf