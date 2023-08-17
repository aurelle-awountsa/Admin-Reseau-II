FROM ubuntu/bind9

MAINTAINER Aurelle Awountsa <aawountsa@gmail.com>


RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano -y
RUN apt-get install bind9 bind9utils dnsutils net-tools -y
RUN apt-get install iputils-ping -y 

WORKDIR /etc/bind

COPY named.conf /etc/bind/


RUN mkdir /var/log/named
RUN touch /var/log/named/misc.log /var/log/named/query.log


EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["named" , "-c" , "/etc/bind/named.conf" , "-g"]



