FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

COPY --chown=vscode:vscode install.sh install-as-vscode.sh /tmp/

RUN bash /tmp/install.sh && rm /tmp/install.sh

USER vscode
RUN bash /tmp/install-as-vscode.sh && rm /tmp/install-as-vscode.sh

CMD ["bash"]