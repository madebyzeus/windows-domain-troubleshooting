# Store Credential
$credential = Get-Credential

# Download from remote server
Get-SCPFile -ComputerName "fsfs.lco.gtn" -Credential $credential -LocalFolder "C:\" -RemoteFolder "/library/software/VPN-Software/GVCSetup64_4.9.9.1016_EN.exe"