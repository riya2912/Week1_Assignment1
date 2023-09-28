#!/bin/bash

# Function to check memory usage

cpu_usage()
{
	cpu_usage=$(top -bn1 | grep 'Cpu' | awk '{print $2}')
	echo "CPU usage is - $cpu_usage"
}

# Function to check memory usage

memory_usage()
{
	memory_usage=$(free -h | awk '/Mem:/{print $3}')
	echo "Memory usage is - $memory_usage"
}

# Function to check Disk usage of root directory

disk_usage()
{
	disk_usage=$(df / -h | grep '/root' | awk '{print $5}')
	echo "Disk usage of root directory is - $disk_usage"
}

# Function to check network connectivity

network_check()
{
	ping -c 1 google.com > /dev/null 2>&1
	if [ $? -eq 0 ]
	then
		echo "Network connectivity is OK"
	else
		echo "Network conectivity is failed"
	fi
}


cpu_usage
memory_usage
disk_usage
network_check
