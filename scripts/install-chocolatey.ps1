#################################################################################################
# Choco Install
#   Additonal packages can be found at https://chocolatey.org/packages
#   1) Remove/Add packages
#################################################################################################
Write-host "Choco Started At: $((Get-Date).ToString())"

$ChocoInstallPath = "$($env:SystemDrive)\ProgramData\Chocolatey\bin"
if (!(Test-Path $ChocoInstallPath))
{
    write-host "Install Chocolatey . . . "
    Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) | out-null
    write-host "END Installing Chocolatey!" 
}
else
{
    write-host "Upgrade Chocolatey . . . "
    choco upgrade chocolatey
    write-host "END Upgrade Chocolatey!"
}

chocolatey feature enable -n=allowGlobalConfirmation

write-host "Install 7zip . . . "
choco install 7zip -y | Out-Null
write-host "END Install 7zip!"

write-host "Install Chrome . . . "
choco install GoogleChrome -y | Out-Null
write-host "END Install Chrome!"

write-host "Install GIT . . . "
choco install git.install -y | Out-Null
write-host "END Install GIT!"

write-host "Install Visual Studio Code . . . "
choco install visualstudiocode -y | Out-Null
write-host "END Install Visual Studio Code!"

write-host "Install Visual Studio Code PowerShell Extension . . . "
choco install choco install vscode-powershell -y | Out-Null
write-host "END Install Visual Studio Code PowerShell Extension!"

write-host "Install OpenSSH . . . "
choco install openssh -params '"/SSHServerFeature"' -y | Out-Null
write-host "END Install OpenSSH!"

chocolatey feature disable -n=allowGlobalConfirmation
Write-host "Choco Ended At: $((Get-Date).ToString())"