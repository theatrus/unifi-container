FROM ubuntu:xenial

RUN apt-get update -y && \
    apt-get install -y wget curl jsvc openjdk-8-jre-headless mongodb-server binutils libcap2
    
RUN wget https://dl.ui.com/unifi/5.12.35/unifi_sysvinit_all.deb && \
    dpkg -i unifi_sysvinit_all.deb

RUN systemctl enable unifi

EXPOSE 8443
CMD ["/sbin/init"]