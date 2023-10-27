################################################################################################################
# Connect to Exchange Online PowerShell                                                                        #
# https://learn.microsoft.com/en-us/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps #
################################################################################################################

#Step 1: Load the Exchange Online PowerShell module

Import-Module ExchangeOnlineManagement
#Error: "Import-Module : The specified module 'ExchangeOnlineManagement' was not loaded because no valid module file was found in any module directory." 
#Execute: "Install the Exchange Online PowerShell module.ps1"


#Step 2: Connect and authenticate
# Connect-ExchangeOnline -UserPrincipalName <UPN> [-UseRPSSession] [-ExchangeEnvironmentName <Value>] [-ShowBanner:$false] [-DelegatedOrganization <String>] [-PSSessionOption $ProxyOptions]

$UPN = ""

Connect-ExchangeOnline -UserPrincipalName $UPN 
