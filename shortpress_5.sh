#!/bin/sh
BLDC_Test_Bench -M 2 >/dev/null
sleep 1 &&
BLDC_Test_Bench -M 2 >/dev/null
sleep 1 &&
BLDC_Test_Bench -M 2 >/dev/null
sleep 2 &&
#Change IP of Bebop to prevent IP conflict when using multiple drones
ifconfig eth0 192.168.42.102 &&
BLDC_Test_Bench -M 2 >/dev/null
