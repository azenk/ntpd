FROM debian:stable-slim

RUN apt-get update && apt-get install -y openntpd && mkdir /var/run/openntpd

ENTRYPOINT ["ntpd","-f","/etc/openntpd/ntpd.conf","-d"]
