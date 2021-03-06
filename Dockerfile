FROM ubuntu

RUN apt-get update
RUN apt-get install -y dialog
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y dos2unix
RUN apt-get install -y iputils-ping
RUN apt-get install -y iptables
RUN apt-get install -y net-tools
RUN apt-get install -y sudo
RUN apt-get update
RUN apt-get install -y curl

COPY conf /home/docker/conf

COPY service_start.sh /home/docker/script/service_start.sh
RUN dos2unix /home/docker/script/service_start.sh
RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh


WORKDIR /home/docker
