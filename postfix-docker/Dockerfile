# Use the official postfix image or a suitable base image
FROM debian:bullseye-slim

# Install postfix and other necessary packages
RUN apt-get update && apt-get install -y \
    postfix \
    mailutils \
    nano \

    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /root

# Copy configuration files into the container
COPY config/main.cf /etc/postfix/
COPY config/master.cf /etc/postfix/

# Copy the start script
COPY scripts/start.sh /start.sh

# Make sure the script is executable
RUN chmod +x /start.sh

# Expose necessary ports
EXPOSE 25

# Run the start script when the container starts
CMD ["/start.sh"]
