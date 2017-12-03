# run.PS1
# this file is a PowerShll Scripts than let 'ipconfig.pl' to work

# firstly we get you ip info use ipconfig command
ipconfig | Out-File "ipconfig" -Encoding UTF8

# initial version
# ipconfig > "ipconfig_temp"
# Get-Content "ipconfig_temp" | Out-File "ipconfig" -Encoding UTF8
# rm "ipconfig_temp"

# let ipconfig.pl run
perl ipconfig.pl
rm "ipconfig"