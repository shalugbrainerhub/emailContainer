# Use a lightweight Linux image
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y postfix mailutils && apt-get clean

COPY postfix-main.cf /etc/postfix/main.cf

EXPOSE 25 587

CMD ["postfix", "start-fg"]
