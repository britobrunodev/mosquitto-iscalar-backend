#!/bin/sh
set -e

if [ -z "$MOSQUITTO_USERNAME" ] || [ -z "$MOSQUITTO_PASSWORD" ]; then
    echo "ERROR: MOSQUITTO_USERNAME and MOSQUITTO_PASSWORD must be set"
    exit 1
fi

touch /etc/mosquitto/passwd
mkdir -p /var/lib/mosquitto

mosquitto_passwd -b /etc/mosquitto/passwd "$MOSQUITTO_USERNAME" "$MOSQUITTO_PASSWORD"
chown mosquitto:mosquitto /etc/mosquitto/passwd
chown mosquitto:mosquitto /var/lib/mosquitto
chmod 0700 /etc/mosquitto/passwd
chmod 0700 /var/lib/mosquitto

exec mosquitto -c /etc/mosquitto/mosquitto.conf