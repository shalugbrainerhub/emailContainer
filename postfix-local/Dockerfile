# Use a lightweight Linux image
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y postfix mailutils && apt-get clean

# Copy the static main.cf configuration
COPY postfix-main.cf /etc/postfix/main.cf

# Copy and set up the entrypoint script
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 25 587

ENTRYPOINT ["/docker-entrypoint.sh"]