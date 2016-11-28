adb shell mount -o remount,rw / &&
adb push libiw.so.29 /lib/libiw.so.29 &&
adb push libiw.so  /lib/libiw.so &&
adb push ifrename /sbin/ifrename &&
adb push iwconfig /sbin/iwconfig &&
adb push iwevent /sbin/iwevent &&
adb push iwgetid /sbin/iwgetid &&
adb push iwlist /sbin/iwlist &&
adb push iwpriv /sbin/iwpriv &&
adb push iwspy /sbin/iwspy &&
adb push wpa_cli /bin/wpa_cli &&
adb push wpa_passphrase /bin/wpa_passphrase &&
adb push wpa_supplicant /bin/wpa_supplicant &&
adb push shortpress_3.sh /bin/onoffbutton/shortpress_3.sh &&
adb shell chmod 777 /bin/onoffbutton/shortpress_3.sh
