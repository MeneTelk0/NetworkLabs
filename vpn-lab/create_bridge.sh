#!/bin/bash

# Create a bridge br-gobgp-router with prefix 10.10.15.1/24
sudo ip link add name br-gobgp-router type bridge
sudo ip link set br-gobgp-router up
sudo ip addr add 10.10.15.1/24 dev br-gobgp-router
# https://superuser.com/questions/1211852/why-linux-bridge-doesnt-work
sudo iptables -A FORWARD -i br-gobgp-router -o br-gobgp-router -j ACCEPT

# Create new veth interface to connect goBGP, assign an IP addr
sudo ip link add name veth1 type veth
sudo ip link set veth1 up
sudo ip addr add 10.10.15.2/24 dev veth1
sudo brctl addif br-gobgp-router veth1

# Add static routes to Loopbacks of monitored routers
sudo ip route add 172.20.22.1/32 dev br-gobgp-router
sudo ip route add 172.20.22.2/32 dev br-gobgp-router
sudo ip route add 172.20.22.3/32 dev br-gobgp-router