Set-PSReadLineOption -PredictionViewStyle list -EditMode Vi

. "$PSScriptRoot\aliases.ps1"
. "$PSScriptRoot\completions.ps1"

# https://stackoverflow.com/questions/73864754/why-do-i-get-a-warning-about-listview-in-terminal-powershell-in-vscode
$WarningPreference = "SilentlyContinue"


# $ENV:EDITOR = "code"
# $ENV:VISUAL = "code"

oh-my-posh init pwsh `
    --config "$env:POSH_THEMES_PATH/cloud-context.omp.json" `
| Invoke-Expression