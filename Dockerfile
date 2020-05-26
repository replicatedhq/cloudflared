FROM debian:stretch-slim

RUN apt-get update && apt-get install --no-install-recommends -y wget ca-certificates && rm -rf /var/lib/apt/lists/*
RUN wget -O /tmp/cloudflared-stable-linux-amd64.tgz https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz && \
  cd /tmp && tar xzvf cloudflared-stable-linux-amd64.tgz && mv /tmp/cloudflared /cloudflared

ENTRYPOINT ["/cloudflared"]