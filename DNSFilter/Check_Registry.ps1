# Check if DNS filter keys in registry exist
if (Test-Path 'HKLM:\SOFTWARE\DNSAgent\Agent' -PathType Container) {
    $address = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\DNSAgent\Agent' -Name Address -ErrorAction SilentlyContinue #| Select-Object -ExpandProperty Address
    $currentvalues = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\DNSAgent\Agent' -Name CurrentValues -ErrorAction SilentlyContinue #| Select-Object -ExpandProperty CurrentValues
    
    if (($address -eq "") -or ($currentvalues -eq "")) {
        #ERROR
        Write-Host "Address and CurrentValues don't have values"
        Exit 1001
    } else {
        #Success
        Write-Host "Address and CurrentValues have values"
        Exit 0
    }
}
