param(
    [string]$program
)

function main($arg){
    (New-Object -comObject Shell.Application).Windows() |
        ? { $_.FullName -ne $null} |
        ? { 
            $_.FullName.toLower().Endswith([string]::Format('\{0}.exe',$arg)) 
        } | % {  $_.Quit() }

}

main($program)