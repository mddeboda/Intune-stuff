# Two Methods for Setup:

## Method 1: Intune Application Deployment

### Steps:

1. **Add as Application to Intune**:
   - Use Intunewin with the following settings:

#### Configure the Required Settings for Intune:

**Application Information:**

- **Program:**
  - **Install Command:** `Powershell.exe -Command Setup-CCleanerFirewall.ps1`
  - **Uninstall Command:** `Powershell.exe -Command Remove-Item C:\CC64.exe -Force`

- **Requirements:**
  - Operating System Architecture: 64-bit
  - Minimum Operating System: Windows 10, version 1607

- **Detection Rules:**
  - Manually Configure - Detect CC64.exe in C:\

## Method 2: Manual Bundle and Setup

### Steps:

1. **Bundle the Program**:
   - Bundle the program as desired and then follow the steps below to copy and set firewall rules.

2. **Copy and Set Firewall Rules**:
   - Use the following commands:
     ```powershell
     # Copy CC64.exe to C:\
     xcopy .\CC64.exe C:\

     # Set firewall rules for the program
     netsh advfirewall firewall add rule name="CCleanin" dir=in action=block program="C:\CC64.exe" enable=yes
     netsh advfirewall firewall add rule name="CCleanout" dir=out action=block program="C:\CC64.exe" enable=yes
     ```
