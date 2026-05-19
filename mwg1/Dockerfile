FROM ubuntu:22.04
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
# RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
RUN apt-get update && apt-get install --no-install-recommends --yes wireguard iproute2 iptables iputils-ping
WORKDIR /mwg
COPY wginit.sh wg0.conf ./
RUN chmod 777 wginit.sh wg0.conf
EXPOSE 51830
CMD ["/mwg/wginit.sh"]