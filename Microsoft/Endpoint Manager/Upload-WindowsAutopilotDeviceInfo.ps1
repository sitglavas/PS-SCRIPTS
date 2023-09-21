Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted

Install-Script Upload-WindowsAutopilotDeviceInfo

#fill in the variables
$tenantname = ""
$grouptag = ""
Upload-WindowsAutopilotDeviceInfo -TenantName $tenantname -GroupTag $grouptag -Verbose
