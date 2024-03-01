# Define URL for Remote Help installer
$installerUrl = "https://aka.ms/downloadremotehelp"

# Specify path where installer will be downloaded
$installerPath = "C:\MicrosoftRemoteHelpInstaller.exe"

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Execute installer silently without user interaction
Start-Process -FilePath $installerPath -Args "/quiet acceptTerms=1 enable AutoUpdates=0" -Wait

# Clean up installer file after install
Remove-Item -Path $installerPath