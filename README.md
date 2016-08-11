# Docker Image for Samba ARM

Based on Debian Jessie ARM

## Run Container

```
$ docker run -it --name samba -p 445:455 -p 137:137 -p 138:138 -p 139:139 -d --restart=always -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro --hostname=Servername -e USER=test -e PASSWORD=test -v /path/to/:/home/test vl0ms/armhf-samba
```
