# Windows Domain Troubleshooting

This guide contains tips to trouble shoot and diagnose Windows related domain issues.

Use this README as a guide. Each section provides help for Windows users. More will be added as issues arise.

# Install Chocolatey Package Manager

Think of Chocolatey as `YUM` or `APT-GET` but for Windows!

The basic command is `choco install -y <packagename>`. You can also install multiple packages with a single line command `choco install -y <packagename01> <packagename02> <packagename03>`.

1. Verify that Chocolatey is installed on your local machine by running `choco --version` from the terminal. If Chocolatey is not installed, download and run the [choco install](choco-install.ps1) file from this repo.
2. Once the Chocolatey install is complete copy and run any of the following commands from an elevated command prompt (Run as Administrator).

## Chocolatey Install Commands

- Google Chrome `choco install -y googlechrome`
- Firefox `choco install -y firefox`
- Putty `choco install -y putty`
- 7zip `choco install 7zip`
- Notepad++ `choco install -y notepadplusplus`
