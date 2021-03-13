FROM debian:stable-slim

RUN apt-get update && apt-get install -y openntpd
RUN mkdir /var/run/openntpd

ENTRYPOINT ["openntpd","-d", "-f", "/etc/ntpd/ntp.conf"]
