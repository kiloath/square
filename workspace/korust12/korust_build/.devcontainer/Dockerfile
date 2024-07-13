FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm
COPY *.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates
RUN rm -f /usr/local/share/ca-certificates/*.crt
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt
ENV LEPTOS_CARGO_GENERATE_VERSION=v0.21.2
ENV LEPTOS_SASS_VERSION=1.77.8
ENV LEPTOS_SITE_ROOT=site
RUN apt update
RUN wget -O- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN /bin/bash -c "source /root/.nvm/nvm.sh \
&& nvm install node \
&& npm install -g sass"
USER vscode
RUN sudo apt update
RUN cargo install cargo-update
RUN cargo install cargo-generate
RUN rustup target add wasm32-unknown-unknown
RUN cargo install --locked trunk
RUN cargo install --locked cargo-leptos
RUN git config --global --add safe.directory '*'
RUN git config --global core.autocrlf true
RUN echo 'export PROMPT_DIRTRIM=1' >> ~/.bashrc

