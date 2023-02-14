#!/bin/bash
#Randy Dickersbach
#NMAP Red Team tool
#script that goes through the nmap tools to learn about the different things on the network
echo Enter target ip
read ip
#checks ports of dhcp for an ip
echo DHCP SCAN
sudo nmap -sU -p 67 --script=dhcp-discover $ip/24
# Scan a target using all HTTP vulns NSE scripts.
echo Enter an IP address for FTP server check anonomys access
read ip
# Scan entire network for FTP servers that allow anonymous access.
echo FTP SCAN
sudo nmap -p 21 --script=ftp-anon $ip/24
#checks t see if nmap can determine certain OS's by responses
echo OS SCAN
echo Enter a specific address to search OS
read ip
sudo nmap -O $ip
echo OVERALL SCAN
echo Please enter a specific ip to check specific details
#checks a hopst on the network
sudo nmap -sp -S $ip
