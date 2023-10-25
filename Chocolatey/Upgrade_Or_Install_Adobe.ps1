$localprograms = choco.exe list --localonly
if ($localprograms -like "*adobereader*")
{
    choco.exe upgrade adobereader -y
}
Else
{
    choco.exe install adobereader -y
}