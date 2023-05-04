FROM ubuntu:18.04

RUN apt update
RUN apt install -y vim kmod strongswan strongswan-pki kmod iproute2 telnet iptables iputils-ping ssh tcpdump