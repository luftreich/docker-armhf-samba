FROM armv7/armhf-debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install --fix-missing samba samba-common -y

RUN rm -f /etc/samba/smb.conf

ADD smb.conf /etc/samba/smb.conf

EXPOSE 445
EXPOSE 135
EXPOSE 138
EXPOSE 139
EXPOSE 137/udp
EXPOSE 138/udp
ADD start.sh /bin/start.sh
RUN chmod a+x /bin/start.sh
CMD ["./bin/start.sh"]
