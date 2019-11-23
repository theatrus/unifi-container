#!/bin/sh
podman run --pull never \
       -p 8443:8443 \
       -p 3478:3478/udp \
       -p 8080:8080 \
       -p 8800:8800 \
       -p 8883:8883 \
       -p 6789:6789 \
       -p 10001:10001/udp \
       -p 1900:1900/udp \
       --mount type=volume,source=unifi,target=/usr/lib/unifi/data \
       docker.io/theatrus/unifi-container
