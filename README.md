Packer files for Windows 2016
=============================================

A Packer image for a Windows Server 2019 Desktop Experience virtual machine

Requirements
------------------

Internet Connection - powershellgallery.com
Internet Connection - chocolatey.org
Internet Connection - updates.microsoft.com

Download ISO file for Windows Server, but in /iso folder

ISO
-----------------

Get Preview ISO from https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewserver


Chocolatey Packages Included
-----------------

 * Chocolatey
 * OpenSSH
 * Chrome
 * 7zip
 * GIT
 * Visual Studio Code
 * Visual Studio Code PowerShell Extension

Packages from PSGallery Included
------------------

 * Invoke-Build
 * powershell-yaml
 * PSDepend
 * PSScriptAnalyzer

References/Sources
------------------

* https://github.com/taliesins/packer-baseboxes/blob/master/hyperv-windows-2016-serverstandard-amd64.json
* https://github.com/StefanScherer/packer-windows
* https://github.com/dylanmei/packer-windows-templates
* https://github.com/PioneerCode/pioneer-windows-development-environment
* https://github.com/lox/windows-2016-vmware-packer

* https://www.packer.io/