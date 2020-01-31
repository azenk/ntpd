FROM debian:stable-slim

RUN apt-get update && apt-get install -y ntp

ENTRYPOINT ["ntpd","-g", "-c", "/etc/ntpd/ntp.conf"]
