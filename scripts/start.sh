#!/bin/bash
iptables -t nat -A POSTROUTING -s 0.0.0.0/0 -o eth0 -m policy --pol ipsec --dir out -j ACCEPT
iptables -t nat -A POSTROUTING -s 0.0.0.0/0 -o eth0 -j MASQUERADE 
ipsec start