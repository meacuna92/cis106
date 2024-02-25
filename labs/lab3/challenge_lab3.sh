#!/bin/bash
echo "The current date is:"
date --rfc-2822

echo -e "\nSome information about my system:"
uname -a

echo -e "\nRAM Information"
# Use echo to add spaces
echo -e "              total       used       free     shared    buff/cache   available"
free -m | tail -n +2 | while read -r line; do echo -e " $line"; done
