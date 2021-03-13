FROM debian:stable-slim

RUN apt-get update && apt-get install -y openntpd
RUN mkdir /var/run/openntpd && chown ntpd: /var/run/openntpd

ENTRYPOINT ["ntpd","-d", "-f", "/etc/ntpd/ntp.conf"]
