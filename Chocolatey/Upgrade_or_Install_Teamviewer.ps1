$localprograms = choco.exe list --localonly
if ($localprograms -like "*teamviewer*")
{
    choco.exe upgrade teamviewer -y
}
Else
{
    choco.exe install teamviewer -y
}