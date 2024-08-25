FROM kiloath/korust
USER root
RUN cargo install create-tauri-app
RUN cargo install tauri-cli@^2.0.0-rc
RUN cargo install trunk --locked
RUN apt update -y && apt upgrade -y \
&& apt install -y libwebkit2gtk-4.1-dev \
build-essential \
curl \
wget \
file \
libssl-dev \
libgtk-3-dev \
libayatana-appindicator3-dev \
librsvg2-dev
