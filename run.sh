#!/bin/sh
podman run -d --privileged -p 8443:8443 docker.io/theatrus/unifi-controller
