#!/bin/bash

printf "Kernel Version:  `uname -r`\n";
printf "Bash Version: ${BASH_VERSION}\n"
printf "Free Storage (mounted): `df -h $PWD | awk '/[0-9]%/{print $(NF-2)}'` \n";

mem_Kb=$(grep -i memfree /proc/meminfo | cut -d: -f2 | tr -d [kB] | sed "s/^[ \t]*// ; s/[ \t]*$//")
mem_Gig=$(echo "scale = 1 ; $mem_Kb / 1000000" | bc )
echo Free Memory: $mem_Gig GB

echo "Files in directory: `ls | wc -l`";
echo "IP Address: `hostname -I | awk '{print $1;}'`";
echo "Active Interfaces: `ip addr show | awk '/inet.*brd/{print $NF}'`";
