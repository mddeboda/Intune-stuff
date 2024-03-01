# Two ways of doing this:

1. Add as application to intune via with intunewin with the following settings
    #Configure the required settings for intune

Application Information:


Program:
Install command
Powershell.exe -Command Setup-CCleanerFirewall.ps1
Uninstall command
Powershell.exe -Command Remove-Item C:\CC64.exe -Force

Requirements:
Operating system architecture: 64-bit
Minimum operating system: Windows 10 1607

Detection Rules:
Manually Configure - Detect CC64.exe in C:\


2. Bundle the program however you'd like and copy/set firewall rules
xcopy .\CC64.exe C:\
# Set firewall rules for program
netsh advfirewall firewall add rule name="CCleanin" dir=in action=block program="C:\CC64.exe" enable=yes
netsh advfirewall firewall add rule name="CCleanout" dir=out action=block program="C:\CC64.exe" enable=yes