$localprograms = choco.exe list --localonly
if ($localprograms -like "*GoogleChrome*")
{
    choco.exe upgrade googlechrome -y
}
Else
{
    choco.exe install googlechrome -y
}