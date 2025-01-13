FROM kiloath/korust1:1.1
ENV PIPX_HOME /opt/pipx
ENV PIPX_BIN_DIR /usr/local/bin
RUN rustup update
RUN sudo apt update -y \
&& sudo apt install -y cmake pipx
RUN pipx ensurepath \
&& pipx install conan
RUN conan profile detect
