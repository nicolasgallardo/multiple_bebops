mount -o remount,rw / &&
wpa_passphrase 'CSAIL-Flight' '8idj2josc' > /etc/wpa_supplicant.conf &&  
ifconfig eth0 192.168.1.13 &&
iwconfig eth0 essid 'CSAIL-Flight' && 
wpa_supplicant -B -Dwext -ieth0 -c/etc/wpa_supplicant.conf
#wait 5 &&
#/sbin/udhcpc -i eth0 

