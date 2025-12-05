FROM lscr.io/linuxserver/chromium:kasm

USER root

RUN mkdir -p /etc/chromium/policies/managed \
    && chmod 755 /etc/chromium/policies/managed

COPY policies.json /etc/chromium/policies/managed/policies.json
RUN chmod 644 /etc/chromium/policies/managed/policies.json

# DO NOT: USER abc
# LSIO's s6 init will switch to abc after it finishes usermod/groupmod stuff.
