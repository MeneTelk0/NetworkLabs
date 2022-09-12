#!/bin/bash

cat router_1.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.11

cat router_2.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.12

cat router_3.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.13

cat router_4.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.14

cat router_5.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.15

cat router_6.txt | sshpass -p "admin" ssh -oKexAlgorithms=diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -t admin@172.20.20.16

cat linux_1.txt | sshpass -p "net" ssh -o StrictHostKeyChecking=no -t root@172.20.20.2

