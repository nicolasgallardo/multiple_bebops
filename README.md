# multiple_bebops

Read the PDF for instructions
Quickstart read quickinstall.pdf or follow the instructions below. For a detailed explanation read the multiple_bebop_github.pdf file.

Connect to the Bebop drone over usb using the android debug tool. Therefore, wait until the drone booted and connect the drone to your computer and press the on/off button 4 times. To see if you have a connection type ifconfig into your terminal, you should see a new network interface called: usb0.
A good tool for file transfer is the android debugger (adb)
Install adb with the command: 
>>  sudo apt-get install android-tools-adb
b.	Connect to the drone: 
>>  adb connect 192.168.43.1:9050


2.	Edit the shell script shortpress_3.sh on your host pc.
Fill in the ssid, password  of your network and the ip you want to have for the drone.
>>  . copy_files.sh
3.	You can test if everything works by restarting the drone, wait until if is finishing with booting and press the on/off button 3 times, the Bebop will give a beep feedback. After 10s-30s the connection is established and you should be able to ping the drone.
 
4.	Follow the readme file in the ARDrone-wpa2 folder to switch the bebop to a secured network.


=================================================================================================
To change the IP permanently
1. switch the drone on and connect your pc to the drone access point

2. open a terminal

3.	Connect to the drone: 
>>  adb connect 192.168.43.1:9050

>>  adb shell
>>  mount -o remount,rw /

4. >>  cd sbin

5. >>  vi broadcom_setup.sh

go with the cursor to the right position and type i to start writing, esc to stop and wq to exit. (or google the right vi commands :-)
 
6. change field IFACE IP AP=”192.168.42.1” to IFACE IP AP=”192.168.42.x”, where x represents any number which you have not assigned to other drones

7. save the file and exit
