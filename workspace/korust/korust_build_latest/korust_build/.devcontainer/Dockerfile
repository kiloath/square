FROM kiloath/korust:1.0
USER root
RUN apt update -y && apt upgrade -y
USER vscode
RUN rustup default stable
RUN cargo install-update -a
