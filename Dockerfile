FROM cabanaonline/alpine:1.0

ARG USER=cabana
ENV HOME /home/$USER

# Downloads compiled libraries.
RUN set -xe; \
    \
    git clone https://github.com/lmrodriguezr/enveomics tools/enveomics;

# Entrypoint to keep the container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]