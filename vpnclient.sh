#!/bin/bash

cd /etc/openvpn/
#echo IP der Server VM:
#read ip

echo "mode p2p" > server.conf
#echo "remote $ip 1194" >> server.conf
echo "dev tun" >> server.conf
echo "proto udp" >> server.conf
echo "ifconfig 192.168.0.2 192.168.0.1" >> server.conf
echo "secret static.key" >> server.conf
echo "ping 10" >> server.conf
echo "ping-restart 180">> server.conf
echo "ping-timer-rem" >> server.conf
echo "verb 3" >> server.conf
echo "mute 50" >> server.conf
