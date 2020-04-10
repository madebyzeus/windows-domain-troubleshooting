@ECHO OFF
:: This batch file will enable Remote Desktop via a registry edit
:: It will also install Chocolatey Package Manager, Disable Windows Updates, Firewall and display some system information
ECHO Please wait...checking system information
:: Section 1: OS Information
ECHO ==============================================
ECHO OS Infortmation...
ECHO ==============================================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information
ECHO ==============================================
ECHO Hardware Information...
ECHO ==============================================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information
ECHO ==============================================
ECHO Network Information...
ECHO ==============================================
ipconfig | findstr IPv4
ECHO ==============================================
:: Section 4: Stuff to make Windows 10 play nice :)
ECHO Installing Chocolatey Package Manager...
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO ==============================================
ECHO Disable Windows 10 Automatic Updates...
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
ECHO ==============================================
ECHO Turn off Windows Firewall...
netsh advfirewall set allprofiles state off
ECHO ==============================================
ECHO Enable Remote Desktop Protocol...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
ECHO ==============================================
ECHO Fixing VPN Registry Edit on Local Machine...
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\CVirtA /v "DisplayName" /t REG_SZ /d "Cisco Systems VPN Adapter for 64-bit Windows" 
ECHO ==============================================
PAUSE