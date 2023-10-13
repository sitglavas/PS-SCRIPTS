# If using an RMM or other tool to install the Roaming Client, below is a useful PowerShell script that will download and install the Roaming Client without the need to distribute the MSI file to the computers.

mkdir C:\temp

Invoke-WebRequest -Uri "https://download.dnsfilter.com/User_Agent/Windows/DNS_Agent_Setup.msi" -OutFile "C:\temp\DNS_Agent_Setup.msi"

# change SITESECRETKEY to your own key
msiexec /qn /i "C:\temp\DNS_Agent_Setup.msi" NKEY="SITESECRETKEY"

# source: https://help.dnsfilter.com/hc/en-us/articles/1500008104822-windows-agent-deployment-guide
