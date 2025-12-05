FROM lscr.io/linuxserver/chromium:kasm

USER root

RUN mkdir -p /etc/chromium/policies/managed
COPY policies.json /etc/chromium/policies/managed/policies.json
RUN chmod 644 /etc/chromium/policies/managed/policies.json

USER abc
