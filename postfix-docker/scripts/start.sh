#!/bin/bash

# Ensure the necessary directories exist
mkdir -p /var/spool/postfix/{hold,incoming,active,deferred}

# Set proper permissions for Postfix to access them
chown -R postfix:postfix /var/spool/postfix

# Start Postfix
postfix start-fg
