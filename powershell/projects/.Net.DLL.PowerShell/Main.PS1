$PWD = Get-Location

Write-Output "Rove dll"
Remove-Item *.dll

Write-Output "Build Dll"
csc /t:library .\JskyLib.cs
vbc /t:library .\JskyLib-vb.vb

[Reflection.Assembly]::LoadFile("$PWD\JskyLib.dll")
[Reflection.Assembly]::LoadFile("$PWD\JskyLib-vb.dll")


Write-Output "Using JskyLib.Math"
[System.Console]::Write("`n`n1 + 2 = ") 
[JskyLib.Math]::Sum(1, 2)

Write-Output "Using JskyLibVB.MathVB"
[System.Console]::Write("`n`nPrint Version Message`n") 
[JskyLibVB.MathVB]::Version()