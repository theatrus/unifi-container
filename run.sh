#!/bin/sh
podman run --pull never -d --privileged -p 8443:8443 docker.io/theatrus/unifi-container
