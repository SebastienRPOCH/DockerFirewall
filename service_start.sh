dos2unix /home/docker/conf
iptables-restore < /home/docker/conf
ifconfig eth1 172.10.10.10
/bin/sh 