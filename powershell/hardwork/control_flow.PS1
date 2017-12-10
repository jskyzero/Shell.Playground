
# -eq	Equal
# -ne	Not equal
# -lt	Less than
# -le	Less than or equal
# -gt	Greater than
# -ge	Greater than or equal


$colors = @("Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet")

For ($i = 0; $i - $colors.Length; $i++) {
  $colors[$i]
}

Write-Output "while loop"

$i = 1
Do {
  $i
  $i++
}
While ($i -le 3)

if ($i -le 10) {
  Write-Output "do loop"
}

$i = 1
Do {
  $i
  $i++
}
Until ($i -gt 3)