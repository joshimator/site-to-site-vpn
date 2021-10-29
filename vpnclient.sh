#!/bin/bash

cd /etc/openvpn/
rm server.conf
echo IP der Server VM:
read ip

echo "mode p2p" > client.conf
echo "remote $ip 1194" >> client.conf
echo "dev tun" >> client.conf
echo "proto udp" >> client.conf
echo "ifconfig 192.168.0.2 192.168.0.1" >> client.conf
echo "secret static.key" >> client.conf
echo "ping 10" >> client.conf
echo "ping-restart 180">> client.conf
echo "ping-timer-rem" >> client.conf
echo "verb 3" >> client.conf
echo "mute 50" >> client.conf

sleep 2
reboot
