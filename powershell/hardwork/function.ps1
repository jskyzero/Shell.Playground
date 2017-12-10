function Start-PSAdmin {Start-Process PowerShell -Verb RunAs}

function Get-SmallFiles {
  Param($Size)
  Get-ChildItem $HOME | where {
    $_.Length -lt $Size -and !$_.PSIsContainer
  }
}

Get-SmallFiles -Size 50