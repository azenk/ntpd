FROM debian:stable-slim

RUN apt-get update && apt-get install -y openntpd

ENTRYPOINT ["ntpd","-d", "-f", "/etc/ntpd/ntp.conf"]
