FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

COPY install.sh install-as-vscode.sh /tmp/

RUN bash /tmp/install.sh

USER vscode
RUN bash /tmp/install-as-vscode.sh

CMD ["bash"]