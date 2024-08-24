FROM kiloath/korust
USER root
RUN cargo install create-tauri-app --locked
RUN cargo install tauri-cli --version '^2.0.0-rc'
RUN cargo install trunk --locked
RUN apt update \
&& apt install -y libwebkit2gtk-4.0-dev \
build-essential \
curl \
wget \
file \
libssl-dev \
libgtk-3-dev \
libayatana-appindicator3-dev \
librsvg2-dev
