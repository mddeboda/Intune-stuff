# Script Name: Setup-CCleaner.ps1
# Description: This script downloads CC64.exe from the GitHub Repo probable-couscous to C:\ and sets up firewall rules to prevent inbound and outbound traffic.

$url = "https://github.com/shorehavenincit/probable-couscous/raw/main/CC64.exe"
$output = "C:\CC64.exe"
Invoke-WebRequest -Uri $url -OutFile $output

# Set firewall rules for CCleaner program
New-NetFirewallRule -DisplayName "Block CCleaner Inbound" -Direction Inbound -Action Block -Program "C:\CC64.exe"
New-NetFirewallRule -DisplayName "Block CCleaner Outbound" -Direction Outbound -Action Block -Program "C:\CC64.exe"