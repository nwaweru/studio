#!/bin/bash

#
# Small script that gets information about a machine
#
# Information to display:
# 1. PWD
# 2. Disk Size
# 3. List users
# 4. Machine Type (colored)
# 5. Machine Name
# 6. IP Address
# 7. Processor Type
# 8. Memory Size
# 9. Kernel (uname)
#

echo -e "\e[4mBash Profile v1.0 by nwaweru\e[0m"

echo "Machine Name: $(hostname)"
#echo "Machine (H/W) Name: $(uname -m)"
echo "Machine Type: $MACHTYPE"
#echo "Processor Type: $(uname -p)"
echo "Memory Size: $(grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}/1024^2" | bc) GB"
#echo "Disk Type: "
echo ""
echo "Kernel Name: $(uname -s)"
echo "Kernel Release: $(uname -r)"
echo "Kernel Version: $(uname -v)"
echo ""
echo "Operating System: $(uname -o)"
echo "OS Users: $(awk -F'[/:]' '{if ($3 >= 1000 && $3 != 65534) print $1}' /etc/passwd)"
echo "IP Address: $(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')"
echo ""
echo "Current Working Directory: $PWD"
echo "Script Name: $0"
