::System Info Batch file
::Julian Moylan 

systeminfo | findstr /c:"OS Name"

systeminfo | findstr /c:"OS Version"

systeminfo | findstr /c:"System Type"

::ECHO Hardware Info

systeminfo | findstr /c:"Total Physical Memory"






::Johnny Schnaufer

wmic cpu get name

wmic diskdrive get name,model,size

PAUSE

:: Section 3: Networking information.


::ECHO NETWORK INFO

ipconfig

PAUSE

::ARP
::Randall Weber mentioned the arp command 


arp -a


PAUSE

::Victoria Jones mentioned nslookup

systeminfo | findstr /B "Domain"

:: Will have to look up ip and nslookup that later
nslookup $WORKGROUP




PAUSE