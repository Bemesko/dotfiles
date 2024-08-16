Function DevFunction { Set-Location -Path C:\dev }
Function Win-Uname { Get-CimInstance Win32_OperatingSystem | Select-Object $Properties | Format-Table -AutoSize }
Set-Alias -Name azsemu 'C:\Program Files (x86)\Microsoft SDKs\Azure\Storage Emulator\AzureStorageEmulator.exe'

Set-Alias -Name azbmigrate 'C:\tools\MigrationTools\migration.exe'

Set-Alias -Name dev -Value DevFunction

Set-Alias -Name grep -Value Select-String

Set-Alias -Name touch -Value New-Item

Set-Alias -Name tail -Value Tail

Set-Alias -Name uname -Value Win-Uname

Set-Alias -Name ls -Value Get-ChildItemColorFormatWide
Set-Alias -Name ll -Value Get-ChildItemColor

Set-PSReadLineOption -PredictionViewStyle list

# Start oh my posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/cloud-context.omp.json" | Invoke-Expression