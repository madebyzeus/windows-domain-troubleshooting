# Windows Domain Troubleshooting

This guide contains tips to troubleshoot and diagnose Windows related domain issues.

Use this README as a guide. Each section provides help for Windows users. More will be added as issues arise.

# Install Chocolatey Package Manager

Think of Chocolatey as `YUM` or `APT-GET` but for Windows!

The basic command is `choco install -y <packagename>`. You can also install multiple packages with a single line command `choco install -y <packagename01> <packagename02> <packagename03>`.

1. Verify that Chocolatey is installed on your local machine by running `choco --version` from the terminal. If Chocolatey is not installed, download and run the [choco install](choco-install.ps1) file from this repo.
2. Once the Chocolatey install is complete copy and run any of the following commands from an elevated command prompt (Run as Administrator).

## Chocolatey Install Commands

** Remember to run these commands from an elevated command prompt! **

- Google Chrome `choco install -y googlechrome`
- Firefox `choco install -y firefox`
- Putty `choco install -y putty`
- 7zip `choco install 7zip`
- Notepad++ `choco install -y notepadplusplus`
- Teamviewer `choco install -y teamviewer`
- Zoom Client `choco install -y zoom-client`
- Google Drive File Stream `choco install -y google-drive-file-stream`

Install all of the above: `choco install -y googlechrome firefox putty 7zip notepadplusplus teamviewer zoom-client google-drive-file-stream`

# Fixing Windows Updates

** Remember to run these commands from an elevated command prompt! **

## Disable Windows 10 Automatic Updates

`REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v "NoAutoUpdate" /t REG_DWORD /d "1" /f`

## Turn Off Firewall

`netsh advfirewall set allprofiles state off`

## Enable Remote Desktop Protocol

`reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f`
