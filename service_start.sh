dos2unix /home/docker/conf
iptables-restore < /home/docker/conf
sh -c “echo 1 /proc/sys/net/ipv4/ip forward’’
/bin/sh 
