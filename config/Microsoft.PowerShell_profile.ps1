# PowerShell Core7でもConsoleのデフォルトエンコーディングはsjisなので必要
[System.Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")
[System.Console]::InputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")

# git logなどのマルチバイト文字を表示させるため (絵文字含む)
$env:LESSCHARSET = "utf-8"

Set-Alias touch New-Item
Set-Alias grep Select-String
Set-Alias d docker

function el() {explorer .}
function pwdc() {Set-Clipboard "$pwd"}

$env:LESSCHARSET = "utf-8"

function Select-LocalRepository {
    $project = (ghq list | fzf --header="Select a project")

    if ($project) {
          $splitted = $project -Split "/"
          return "$($splitted[1])/$($splitted[2])"
        } else {
          return ""
    }
}

function phpunit ($dir = "/app/tests") { 
    docker run -v $PWD`:/app --rm -t --network shared-network phpunit/phpunit $dir
}

function composer ($arg) {
    docker run --rm -it -v $PWD`:/app composer $arg
}

function fssh() {
    $sshLoginHost=@()
    $sshLoginHost="cat ~/.ssh/config | grep host | Out-String | %{ $_.Split' +'[2] } | fzf"

    if ( $sshLoginHost -eq "" ) {
    # ex) Ctrl-C.
        return 1
    }

    ssh ${sshLoginHost}
}

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

