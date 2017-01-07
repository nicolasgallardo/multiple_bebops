#!/bin/sh
#Set the SSID, Password and IP
SSID='ssid'	# Change this to your SSID
PW='password' 		# Change this to the password of your wifi network
IP=192.168.1.101 	# Change this to the desired Bebop IP	

#Connect to defined Network
BLDC_Test_Bench -M 2 >/dev/null
sleep 1 &&
mount -o remount,rw / &&
sleep 1 &&
wpa_passphrase $SSID $PW > /etc/wpa_supplicant.conf && 
sleep 1 && 
ifconfig eth0 $IP && 
sleep 1 &&
mount -o remount,rw / &&
sleep 1 &&
wpa_passphrase $SSID $PW > /etc/wpa_supplicant.conf && 
sleep 1 && 
ifconfig eth0 $IP &&
sleep 1 &&
wpa_supplicant -B -D wext -i eth0 -c /etc/wpa_supplicant.conf &&
sleep 1 &&
BLDC_Test_Bench -M 2 >/dev/null
sleep 1 &&
BLDC_Test_Bench -M 2 >/dev/null
#wait 5 &&
#/sbin/udhcpc -i eth0 
