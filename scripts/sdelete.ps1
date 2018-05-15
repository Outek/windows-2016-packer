$ProgressPreference = "SilentlyContinue"

$msi_file_name = "sdelete.exe"

$scriptPath = "E:\"
$download_path = join-path $scriptPath $msi_file_name 

if ($SkipSDelete){
	Write-Host "Skipping sdelete"
	exit 0
}

&"$download_path" -accepteula -z $($env:SystemDrive)