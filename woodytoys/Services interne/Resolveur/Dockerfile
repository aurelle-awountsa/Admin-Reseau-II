FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 

COPY named.conf /etc/bind/

RUN mkdir /var/log/named
RUN chown bind:bind /var/log/named
RUN touch /var/log/named/misc.log /var/log/named/query.log
RUN chown bind:bind /var/log/named/*

USER bind

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["named","-g"]