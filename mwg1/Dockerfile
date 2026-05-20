FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wireguard-tools \
        iproute2 \
        iptables \
        iputils-ping \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /mwg

COPY wginit.sh wg0.conf ./

RUN chmod 755 wginit.sh \
    && chmod 600 wg0.conf

EXPOSE 51830/udp

CMD ["/mwg/wginit.sh"]