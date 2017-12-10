# find all item with extension ps1
Get-ChildItem . -force | Where-Object {$_.Extension -eq ".ps1"} 
# actually
Get-ChildItem . -Filter "*.ps1" | Rename-Item -NewName {$_.name -replace 'PS1','ps1'}
