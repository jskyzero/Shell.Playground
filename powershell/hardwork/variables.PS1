# Let's use variables in powershell

# clear the screen, same to cls clear
Clear-Host


$num = 1
ehco $num

$num | Get-Member
$num.GetType()

$colors = @("Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet")

"the list size is: " + $colors.Length | Write-Output

