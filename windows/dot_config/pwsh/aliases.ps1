Function DevFunction { Set-Location -Path C:\dev }
Function Win-Uname { Get-CimInstance Win32_OperatingSystem | Select-Object $Properties | Format-Table -AutoSize }

Function PrettyLog {
    git log `
        --graph `
        --abbrev-commit `
        --decorate `
        --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' `
        --all
}
Function ForceRemove {
    param(
        [Parameter(Mandatory = $true)]
        [string]
        $Path
    )
    Remove-Item -Recurse -Force $Path
}

Function ConvertFrom-Base64($base64) {
    return [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($base64))
}

Function ConvertTo-Base64($plain) {
    return [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes($plain))
}

Function OpenCodeInDirectory {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )
    code $Path

    Set-Location -Path $Path
}

Set-Alias -Name azsemu 'C:\Program Files (x86)\Microsoft SDKs\Azure\Storage Emulator\AzureStorageEmulator.exe'

Set-Alias -Name azbmigrate 'C:\tools\MigrationTools\migration.exe'

Set-Alias -Name cod -Value OpenCodeInDirectory

Set-Alias -Name dev -Value DevFunction

Set-Alias -Name e -Value explorer

Set-Alias -Name glog -Value PrettyLog

Set-Alias -Name grep -Value Select-String

Set-Alias -Name kctx -Value kubectx

Set-Alias -Name kns -Value kubens

Set-Alias -Name ku -Value kubectl

Set-Alias -Name ls -Value Get-ChildItemColorFormatWide

Set-Alias -Name ll -Value Get-ChildItemColor

Set-Alias -Name rm-rf -Value ForceRemove

Set-Alias -Name touch -Value New-Item

Set-Alias -Name tail -Value Tail

Set-Alias -Name uname -Value Win-Uname