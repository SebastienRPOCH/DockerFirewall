FROM ubuntu

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y iputils-ping
RUN apt-get install -y iptables
RUN apt-get install -y net-tools
RUN apt-get install -y sudo
	
COPY conf /home/docker/conf
COPY interfaces /interfaces

COPY service_start.sh /home/docker/script/service_start.sh

RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh

WORKDIR /home/docker