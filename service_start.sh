dos2unix /home/docker/conf
iptables-restore < /home/docker/conf
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
/bin/sh 