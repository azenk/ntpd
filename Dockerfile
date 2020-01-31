FROM debian:stable-slim

RUN apt-get update && apt-get install -y ntp

ENTRYPOINT ["ntpd","-n", "-c", "/etc/ntpd/ntp.conf"]
