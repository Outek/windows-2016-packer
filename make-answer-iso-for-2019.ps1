$osFolder = 'windows-2019'
$isoFolder = 'answer-iso'
if (test-path $isoFolder){
	remove-item $isoFolder -Force -Recurse
}

if (test-path windows\$osFolder\answer.iso){
	remove-item windows\$osFolder\answer.iso -Force
}


mkdir $isoFolder

Copy-Item windows\$osFolder\Autounattend.xml $isoFolder\

Copy-Item windows\$osFolder\sysprep-unattend.xml $isoFolder\
Copy-Item windows/windows-2019/Autounattend.xml $isoFolder\
Copy-Item scripts/disable-winrm.ps1 $isoFolder\
Copy-Item scripts/enable-winrm.ps1 $isoFolder\
Copy-Item scripts/disable-screensaver.ps1 $isoFolder\
Copy-Item scripts/win-updates.ps1 $isoFolder\
Copy-Item scripts/microsoft-updates.bat $isoFolder\
Copy-Item scripts/install-chocolatey.ps1 $isoFolder\
Copy-Item scripts/install-psgallerymodules.ps1 $isoFolder\

#Copy-Item windows\scripts\set-power-config.ps1 $isoFolder\
#Copy-Item windows\scripts\microsoft-updates.ps1 $isoFolder\
#Copy-Item windows\scripts\win-updates.ps1 $isoFolder\
Copy-Item scripts\run-sysprep.ps1 $isoFolder\
Copy-Item scripts\run-sysprep.cmd $isoFolder\
#Copy-Item windows\scripts\oracle-cert.cer $isoFolder\
#Copy-Item windows\scripts\enable-winrm.ps1 $isoFolder\
#Copy-Item windows\scripts\enable-winrm.task.ps1 $isoFolder\
#Copy-Item windows\scripts\fixnetwork.ps1 $isoFolder\
Copy-Item scripts\sdelete.exe $isoFolder\
Copy-Item scripts\sdelete.ps1 $isoFolder\
#Copy-Item windows\scripts\elevate.exe $isoFolder\
#Copy-Item windows\scripts\Set-ClientWSUSSetting.ps1 $isoFolder\
#Copy-Item windows\scripts\Set-ClientWSUSSetting.task.ps1 $isoFolder\
#Copy-Item windows\scripts\Reset-ClientWSUSSetting.ps1 $isoFolder\

Copy-Item scripts\enable-rdp.bat $isoFolder\

Copy-Item scripts\pin-powershell.bat $isoFolder\

& .\mkisofs.exe -r -iso-level 4 -UDF -o windows\$osFolder\answer.iso $isoFolder

if (test-path $isoFolder){
	remove-item $isoFolder -Force -Recurse
}