#!/bin/bash



#Run the script remotely 
#ssh root@MachineB 'bash -s' < local_script.sh

echo -e " System Information:"
#Randall Weber with the uname command
echo -e "Hostname:\t\t"`uname -n`
echo -e "Operating System:\t"`uname -o`
echo -e "Kernel:\t\t\t"`uname -r`

echo -e "Date Performed:\t\t"`date`
echo -e "uptime:\t\t\t"`uptime `
#Anthony Ioppolo with the cat command
echo -e "Product Name:\t\t"`cat /sys/class/dmi/id/product_name`
echo -e "Version:\t\t"`cat /sys/class/dmi/id/product_version`
echo -e "CPU Usage:\t"`cat /proc/stat | awk '/cpu/{printf("%.2f%\n"), ($2+$4)*100/($2+$4+$5)}' |  awk '{print $0}' | head -1`


# Sean Kannanaikal with the netstat command 
echo -e "Routing Table:\t\t\t"` netstat -rn`

#Julian Moylan with the arp -a command
echo -e "Arp:\t\t\t"` arp -e`


# This is some extra CPU/Memory informtation because I thought it would be very helpful
echo -e "CPU and Memory Usage:"
echo -e "Memory Usage:\t"`free | awk '/Mem/{printf("%.2f%"), $3/$2*100}'`
echo -e "Swap Usage:\t"`free | awk '/Swap/{printf("%.2f%"), $3/$2*100}'`
echo -e "Machine Type:\t\t"`vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi`
