FROM debian:stable-slim

RUN apt-get update && apt-get install -y openntpd

ENTRYPOINT ["openntpd","-d", "-f", "/etc/ntpd/ntp.conf"]
