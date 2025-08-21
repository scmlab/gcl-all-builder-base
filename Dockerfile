FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04
COPY install-os-packages.sh /tmp/
RUN bash -x /tmp/install-os-packages.sh && rm /tmp/install-os-packages.sh
# now we have llvm and libs

USER vscode

COPY --chown=vscode:vscode install-ghcup-and-stack.sh /tmp/
RUN bash -x /tmp/install-ghcup-and-stack.sh && rm /tmp/install-ghcup-and-stack.sh
# now we have ghcup and stack

COPY --chown=vscode:vscode install-nvm-and-node.sh /tmp/
RUN bash -x /tmp/install-nvm-and-node.sh && rm /tmp/install-nvm-and-node.sh
# now we have nvm and node

CMD ["bash"]
