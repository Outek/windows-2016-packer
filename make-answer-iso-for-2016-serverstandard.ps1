$osFolder = 'windows-2016-serverstandard'
$isoFolder = 'answer-iso'
if (test-path $isoFolder){
	remove-item $isoFolder -Force -Recurse
}

if (test-path windows\$osFolder\answer.iso){
	remove-item windows\$osFolder\answer.iso -Force
}


mkdir $isoFolder

copy windows\$osFolder\Autounattend.xml $isoFolder\
copy windows\$osFolder\sysprep-unattend.xml $isoFolder\

copy windows/windows-2016-serverstandard/Autounattend.xml $isoFolder\
copy scripts/disable-winrm.ps1 $isoFolder\
copy scripts/enable-winrm.ps1 $isoFolder\
copy scripts/disable-screensaver.ps1 $isoFolder\
copy scripts/win-updates.ps1 $isoFolder\
copy scripts/microsoft-updates.bat $isoFolder\
copy scripts/install-chocolatey.ps1 $isoFolder\

#copy windows\scripts\set-power-config.ps1 $isoFolder\
#copy windows\scripts\microsoft-updates.ps1 $isoFolder\
#copy windows\scripts\win-updates.ps1 $isoFolder\
copy scripts\run-sysprep.ps1 $isoFolder\
copy scripts\run-sysprep.cmd $isoFolder\
#copy windows\scripts\oracle-cert.cer $isoFolder\
#copy windows\scripts\enable-winrm.ps1 $isoFolder\
#copy windows\scripts\enable-winrm.task.ps1 $isoFolder\
#copy windows\scripts\fixnetwork.ps1 $isoFolder\
copy scripts\sdelete.exe $isoFolder\
copy scripts\sdelete.ps1 $isoFolder\
#copy windows\scripts\elevate.exe $isoFolder\
#copy windows\scripts\Set-ClientWSUSSetting.ps1 $isoFolder\
#copy windows\scripts\Set-ClientWSUSSetting.task.ps1 $isoFolder\
#copy windows\scripts\Reset-ClientWSUSSetting.ps1 $isoFolder\

copy scripts\enable-rdp.bat $isoFolder\

& .\mkisofs.exe -r -iso-level 4 -UDF -o windows\$osFolder\answer.iso $isoFolder

if (test-path $isoFolder){
	remove-item $isoFolder -Force -Recurse
}