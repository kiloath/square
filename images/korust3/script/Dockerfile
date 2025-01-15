FROM kiloath/korust2:1.1
USER root
RUN rustup update
RUN apt update -y
COPY dockerdaemon.sh /opt/src/scripts/dockerdaemon.sh
RUN /opt/src/scripts/dockerdaemon.sh
RUN rm -f /opt/src/scripts/dockerdaemon.sh
USER vscode
