FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04
COPY install.sh /tmp/
RUN bash /tmp/install.sh && rm /tmp/install.sh
# now we have llvm12

USER vscode

COPY install-as-vscode.sh /tmp/
RUN bash /tmp/install-as-vscode.sh && rm /tmp/install-as-vscode.sh
# now we have ghcup and stack

COPY install-ghc-and-compile-deps.sh /tmp/
RUN bash /tmp/install-ghc-and-compile-deps.sh && rm /tmp/install-ghc-and-compile-deps.sh

CMD ["bash"]
