FROM kiloath/korust1:1.1
USER root
ENV PIPX_HOME /opt/pipx
ENV PIPX_BIN_DIR /usr/local/bin
RUN rustup update
RUN apt update -y \
&& apt install -y cmake pipx
RUN pipx ensurepath \
&& pipx install conan
USER vscode
RUN conan profile detect
