write-host "Update PackageProvider for NuGet. . . "
Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.201 -Force

write-host "Install InvokeBuild . . . "
Install-Module -Name InvokeBuild -Force

write-host "Install PSScriptAnalyzer . . . "
Install-Module -Name PSScriptAnalyzer -Force

write-host "Install PSDepend . . . "
Install-Module -Name PSDepend -Force

write-host "Install powershell-yaml . . . "
Install-Module -Name powershell-yaml -Force