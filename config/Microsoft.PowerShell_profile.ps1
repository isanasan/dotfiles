# PowerShell Core7でもConsoleのデフォルトエンコーディングはsjisなので必要
[System.Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")
[System.Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")

# git logなどのマルチバイト文字を表示させるため (絵文字含む)
$env:LESSCHARSET = "utf-8"

Set-Alias touch New-Item
Set-Alias grep Select-String
Set-Alias fr Select-LocalRepository

function el() {explorer .}
function pwdc() {Set-Clipboard "$pwd"}

$env:LESSCHARSET = "utf-8"

function Select-LocalRepository
{
    $project = (ghq list | fzf --header="Select a project")

    if ($project) {
        $splitted = $project -Split "/"
        Set-Location -Path "$(ghq root)\github.com\$($splitted[1])\$($splitted[2])"
    }

    return
}

function phpunit ($dir = "/app/tests") { 
    docker run -v $PWD`:/app --rm -t --network shared-network phpunit/phpunit $dir
}

function composer ($arg) {
    docker run --rm -it -v $PWD`:/app composer $arg
}

Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadlineOption -BellStyle None
Set-PSReadlineOption -EditMode "Vi"
Set-PSReadlineKeyHandler -Key "Ctrl+o" -Function "MenuComplete"
Set-PSReadLineKeyHandler -key "Ctrl+]" -ScriptBlock {
    Select-LocalRepository
    [Microsoft.PowerShell.PSConsoleReadLine]::ClearScreen()
}
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

Invoke-Expression (&starship init powershell)
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# Import-Module posh-git
# Import-Module oh-my-posh
# Set-Theme Paradox

