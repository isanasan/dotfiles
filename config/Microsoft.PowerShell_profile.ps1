# PowerShell Core7でもConsoleのデフォルトエンコーディングはsjisなので必要
[System.Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")
[System.Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")

# git logなどのマルチバイト文字を表示させるため (絵文字含む)
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

function de
{
    docker exec -it $(docker ps --format "{{.Names}}" | fzf) bash
    return
}

function dr
{
    docker rm -f $(docker ps --format "{{.Names}}" | fzf)
    return
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
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

