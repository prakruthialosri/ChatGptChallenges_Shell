#!/usr/bin/bash

diskusage=$(df -h)
top_memory=$(ps aux --sort=-%mem | head -n 4)
cpu_load=$(uptime | awk -F'load average:' '{ print $2 }')
echo "Disk Usage : $diskusage \n"
echo "Process using memory : $top_memory \n"
echo "Cpu Load : $cpu_load \n"
