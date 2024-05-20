#!/bin/bash

# Get system information
hostname=$(hostname)
os=$(uname -o)
kernel=$(uname -r)
memory_info=$(free -h | awk '/Mem/ {print "Total memory: " $2, "\n- Used memory: " $3, "\n- Free memory: " $4}')

# Get user information
user=$(whoami)
home_dir=$HOME

# Get system status
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
disk_space=$(df -h / | awk 'NR==2 {print "Disk usage (root): " $3 " out of " $2 " ("$5")"}')
disk_space_sda=$(df -h | grep "/dev/sda" | awk '{print "Disk usage (sda): " $3 " out of " $2 " ("$5")"}')

# Set text color variables
RED="$(tput setaf 1)"
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
CYAN=$(tput setaf 6)
MAJENTA=$(tput setaf 5)
RESET=$(tput sgr0) # Reset text color
DELAY=0.15

# Print welcome message with colored text
welcome="${GREEN}Welcome to $hostname,\n${RESET}"
# text=(
# "██████╗  █████╗      ██╗███╗   ███╗ █████╗"
# "██╔══██╗██╔══██╗     ██║████╗ ████║██╔══██╗"
# "██████╔╝███████║     ██║██╔████╔██║███████║"
# "██╔══██╗██╔══██║██╗  ██║██║╚██╔╝██║██╔══██║"
# "██║  ██║██║  ██║╚█████╔╝██║ ╚═╝ ██║██║  ██║"
# "╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝     ╚═╝╚═╝  ╚═╝\n\n")

R="
██████╗ 
██╔══██╗
██████╔╝
██╔══██╗
██║  ██║
╚═╝  ╚═╝"

RA="
██████╗  █████╗ 
██╔══██╗██╔══██╗
██████╔╝███████║
██╔══██╗██╔══██║
██║  ██║██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝"

RAJ="
██████╗  █████╗      ██╗
██╔══██╗██╔══██╗     ██║
██████╔╝███████║     ██║
██╔══██╗██╔══██║██╗  ██║
██║  ██║██║  ██║╚█████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ "

RAJM="
██████╗  █████╗      ██╗███╗   ███╗
██╔══██╗██╔══██╗     ██║████╗ ████║
██████╔╝███████║     ██║██╔████╔██║
██╔══██╗██╔══██║██╗  ██║██║╚██╔╝██║
██║  ██║██║  ██║╚█████╔╝██║ ╚═╝ ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝     ╚═╝"

RAJMA="
██████╗  █████╗      ██╗███╗   ███╗ █████╗ 
██╔══██╗██╔══██╗     ██║████╗ ████║██╔══██╗
██████╔╝███████║     ██║██╔████╔██║███████║
██╔══██╗██╔══██║██╗  ██║██║╚██╔╝██║██╔══██║
██║  ██║██║  ██║╚█████╔╝██║ ╚═╝ ██║██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝     ╚═╝╚═╝  ╚═╝"


echo -e "$welcome${CYAN}$R${RESET}"
sleep $DELAY
clear
echo -e "$welcome${CYAN}$RA${RESET}"
sleep $DELAY
clear
echo -e "$welcome${CYAN}$RAJ${RESET}"
sleep $DELAY
clear
echo -e "$welcome${CYAN}$RAJM${RESET}"
sleep $DELAY
clear
echo -e "$welcome${CYAN}$RAJMA${RESET}"
sleep $DELAY



# for line in "${text[@]}"; do
#     echo -e "${CYAN}$line${RESET}"
#     sleep $DELAY
# done

echo -e "${YELLOW}System Information:${RESET}
- Operating System: $os
- $memory_info\n"



echo -e "${YELLOW}System Status:${RESET}
- $disk_space
- $disk_space_sda\n"

echo -e "${RED}Logged in at:${RESET} $(date)\n"
alias please=sudo
