#!/bin/bash 
cpu_threshold=85 
disk_threshold=85
disk_thres
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1) 
if [ "$cpu_usage" -gt "$CPU_threshold" ]; then 
 echo "High CPU usage detected:$cpu_usage%" 
fi 
disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | cut -d% -f1) 
if [ "$disk_usage" -gt "$disk_threshold" ]; then  echo "High disk usage detected: $disk_usage%" 
 # Add alert/notification logic here 
fi 
