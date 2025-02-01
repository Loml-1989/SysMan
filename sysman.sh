#!/bin/bash
# 
#
# Author: Loml-1989
# Date  : 01/02/2025
#
# Feel free to modify and tweak the script as you want! 3>
#
#


# Function to update system and clean
update_system() {
    echo -e "\nUpdating system and cleaning..."
    sudo pacman -Syu --noconfirm
    echo -e "Cleaning up unused packages..."
    sudo pacman -Rns $(pacman -Qdtq) --noconfirm
    echo -e "Cleaning package cache..."
    sudo pacman -Sc --noconfirm
    echo -e "System updated and cleaned.\n"
}

# Function to check disk usage
check_disk_usage() {
    echo -e "\nAnalyzing disk usage (top 20 largest files/directories)..."
    sudo du -ahx / | sort -rh | head -n 20
    echo -e "\nDisk usage analysis completed.\n"
}

# Function to update AUR packages
update_aur() {
    echo -e "\nUpdating AUR packages..."
    yay -Syu --noconfirm
    echo -e "AUR packages updated!\n"
}

# Function to clean system logs
clean_logs() {
    echo -e "\nCleaning system log files..."
    sudo journalctl --vacuum-time=7d
    sudo rm -rf /var/log/*.log
    sudo rm -rf /var/log/journal/*
    echo -e "System log files cleaned.\n"
}

# Function to perform network speed test
network_speed_test() {
    echo -e "\nTesting network speed..."
    speedtest-cli
    echo -e "\nNetwork speed test completed.\n"
}

# Function to save system info to a text file
save_system_info() {
    SYSTEM_INFO="system_info.txt"
    echo -e "\nGathering system information and saving to $SYSTEM_INFO..."
    echo "System Information:" > $SYSTEM_INFO
    echo "---------------------" >> $SYSTEM_INFO
    echo "Kernel Version: $(uname -r)" >> $SYSTEM_INFO
    echo "CPU: $(lscpu | grep 'Model name' | cut -d: -f2)" >> $SYSTEM_INFO
    echo "RAM: $(free -h | grep Mem | awk '{print $3 "/" $2}')" >> $SYSTEM_INFO
    echo "Disk Usage: $(df -h / | tail -1 | awk '{print $3 "/" $2}')" >> $SYSTEM_INFO
    echo "Up Time: $(uptime -p)" >> $SYSTEM_INFO
    echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')" >> $SYSTEM_INFO
    echo -e "\nSystem information saved to $SYSTEM_INFO.\n"
}

# Main menu
menu() {
    echo -e "\n------------------------------------------"
    echo -e "       Arch Linux System Maintenance      "
    echo -e "------------------------------------------"
    echo -e "Select an option from the menu below:\n"
    echo -e "1) Update system and clean"
    echo -e "   - Updates your system, removes unused packages, and clears the package cache."
    echo -e "2) Check disk usage"
    echo -e "   - Analyzes disk usage and displays the 20 largest files and directories."
    echo -e "3) Update AUR packages"
    echo -e "   - Updates all installed AUR packages using yay."
    echo -e "4) Clean system logs"
    echo -e "   - Cleans up system log files older than 7 days."
    echo -e "5) Test network speed"
    echo -e "   - Tests the current internet download/upload speed."
    echo -e "6) Save system information to a file"
    echo -e "   - Gathers system information like kernel, CPU, RAM, disk usage, and uptime, and saves it to a text file."
    echo -e "9) Exit"
    echo -e "\n------------------------------------------"
    
    read -p "Enter your choice (1-9): " choice

    case $choice in
        1) update_system ;;
        2) check_disk_usage ;;
        3) update_aur ;;
        4) clean_logs ;;
        5) network_speed_test ;;
        6) save_system_info ;;
        9) exit 0 ;;
        *) echo -e "\nInvalid option. Please choose a valid number (1-9).\n" ;;
    esac
}

# Loop until user exits
while true; do
    menu
done

