FROM lscr.io/linuxserver/chromium:kasm

USER root

# Enterprise policies for Chromium
RUN mkdir -p /etc/chromium/policies/managed \
    && chmod 755 /etc/chromium/policies/managed

COPY policies.json /etc/chromium/policies/managed/policies.json
RUN chmod 644 /etc/chromium/policies/managed/policies.json

# IMPORTANT: let LSIO's s6 init handle dropping to abc
# Do NOT add "USER abc" here
