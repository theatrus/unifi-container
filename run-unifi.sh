#!/bin/bash

JAVA_VARS="-Dunifi.datadir=/var/lib/unifi -Dunifi.logdir=/var/log/unifi -Dunifi.rundir=/var/run/unifi  -Xmx1024M -Djava.awt.headless=true -Dfile.encoding=UTF-8  -XX:+ExitOnOutOfMemoryError -XX:+CrashOnOutOfMemoryError -XX:ErrorFile=/usr/lib/unifi/logs/hs_err_pid%p.log"
JVM="/usr/lib/jvm/java-8-openjdk-amd64/bin/java"

exec "${JVM}" ${JAVA_VARS}  -jar /usr/lib/unifi/lib/ace.jar start
