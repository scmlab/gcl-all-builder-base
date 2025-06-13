FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04
COPY install-os-packages.sh /tmp/
RUN bash -x /tmp/install-os-packages.sh && rm /tmp/install-os-packages.sh
# now we have llvm12 and libs

USER vscode

COPY --chown=vscode:vscode install-ghcup-and-stack.sh /tmp/
RUN bash -x /tmp/install-ghcup-and-stack.sh && rm /tmp/install-ghcup-and-stack.sh
# now we have ghcup and stack

#COPY --chown=vscode:vscode install-ghc-and-compile-deps.sh /tmp/
#RUN bash -x /tmp/install-ghc-and-compile-deps.sh && rm /tmp/install-ghc-and-compile-deps.sh

CMD ["bash"]
