dos2unix /home/docker/conf
iptables-restore < /home/docker/conf
echo 1 > /proc/sys/net/ipv4/ip_forward
dos2unix /etc/sysctl.conf
/bin/sh 
