mount -o remount,rw / &&
wpa_passphrase 'Networkname' 'password' > /etc/wpa_supplicant.conf &&  
ifconfig eth0 192.168.1.102 && 
wpa_supplicant -B -D wext -i eth0 -c /etc/wpa_supplicant.conf
#wait 5 &&
#/sbin/udhcpc -i eth0 

