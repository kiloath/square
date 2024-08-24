FROM kiloath/korust
RUN cargo install create-tauri-app --locked
RUN cargo install tauri-cli --version '^2.0.0-rc'
RUN cargo install trunk --locked
RUN apt update \
&& apt install libwebkit2gtk-4.1-dev \
build-essential \
curl \
wget \
file \
libxdo-dev \
libssl-dev \
libayatana-appindicator3-dev \
librsvg2-dev



