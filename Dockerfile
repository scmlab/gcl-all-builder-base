FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

COPY install.sh /tmp/install.sh
RUN bash /tmp/install.sh && rm /tmp/install.sh

CMD ["bash"]