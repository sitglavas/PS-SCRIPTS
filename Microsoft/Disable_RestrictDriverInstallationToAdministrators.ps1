# Check if the key exists, if not, create it
if (-not (Test-Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint")) {
    New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Force
}

# Set the value
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name "RestrictDriverInstallationToAdministrators" -Value 0 -Type DWord -Force
