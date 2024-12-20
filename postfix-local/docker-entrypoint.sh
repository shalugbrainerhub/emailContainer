#!/bin/bash

# Get the container hostname
HOSTNAME=$(hostname)

# Update Postfix configuration with the current hostname
postconf -e "myhostname = $HOSTNAME"
postconf -e "mydomain = localdomain"
postconf -e "mydestination = $HOSTNAME, $HOSTNAME.localdomain, localhost.localdomain, localhost, localdomain"

# Start Postfix in foreground
exec postfix start-fg