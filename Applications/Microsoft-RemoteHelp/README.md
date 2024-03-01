# Application Installation Instructions

## Application: Microsoft Remote Help

To install Microsoft Remote Help via intune, follow these steps:

1. **Compile PowerShell Script into .intunewin file**:
   - You can use the Intunewinapputil.exe provided by Microsoft or use the Intunewin application provided here.

### Configure the Required Settings for Intune

**Application Information:**

- **Name:** Remote Help
- **Description:** Download Microsoft Remote Help installer and install silently without user interaction.
- **Publisher:** Microsoft
- ![image](https://github.com/mddeboda/Intune-stuff/assets/76268826/4ab84d9b-c8f4-4a5f-a613-6518ad1ffea5)


**Program Section:**

- **Install Command:** `PowerShell -Command .\install_remote_help.ps1`
- **Uninstall Command:** `cmd.exe`
  - Note: You may consider refining the uninstall command for better efficiency. This is currently under testing.
![image](https://github.com/mddeboda/Intune-stuff/assets/76268826/67ca7a9e-b53e-4008-82a4-a9d88902140e)

**Requirements:**

- **Operating System Architecture:** 64-bit
- **Minimum Operating System:** Windows 10, version 1607
![image](https://github.com/mddeboda/Intune-stuff/assets/76268826/b8defdf7-0bc0-43f9-98f5-868f87c3f9a3)

**Detection Rules: Manually Configure Detection Rules**

- **Rule Type:** File
- **Path:** C:\Program Files\Remote Help
- **File or Folder:** RemoteHelp.exe
- **Detection Method:** File or folder exists
- **Associate with a 32-bit app on 64-bit clients:** No
![image](https://github.com/mddeboda/Intune-stuff/assets/76268826/8291aced-dab4-4fc8-993d-bf1cf805388d)

If you have any issues or have questions, reach out and I'll try to help out.
