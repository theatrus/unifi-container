FROM ubuntu:xenial

RUN apt-get update -y && \
    apt-get install -y wget curl jsvc openjdk-8-jre-headless mongodb-server binutils libcap2 logrotate
    
RUN wget https://dl.ui.com/unifi/6.2.26/unifi_sysvinit_all.deb && \
    dpkg -i unifi_sysvinit_all.deb && \
    rm unifi_sysvinit_all.deb

COPY run-unifi.sh /run-unifi.sh

CMD ["/run-unifi.sh"]