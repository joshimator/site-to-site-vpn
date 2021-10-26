#!/bin/bash

apt install openvpn -y
modprobe tun

cd /etc/openvpn/
openvpn --genkey secret static.key
touch server.conf

echo "mode p2p" > server.conf
echo "port 1194" >> server.conf
echo "dev tun" >> server.conf
echo "proto udp" >> server.conf
echo "ifconfig 192.168.0.1 192.168.0.2" >> server.conf
echo "ping 10" >> server.conf
echo "ping-restart 180">> server.conf
echo "ping-timer-rem" >> server.conf
echo "verb 3" >> server.conf
echo "mute 50" >> server.conf