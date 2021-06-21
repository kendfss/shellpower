$help = "Quit a project
usage:
    send current working directory to recycle bin:
        > scrap
    send file(s) and/or folder(s) to recycle bin:
        > scrap arg1 arg2 ... argN
"

if ($args) {
    foreach ($arg in $args) {
        if ($arg -match '\.') {
            $dir = [string] (pwd)
            cd ..
            recycle $dir
        } elseif (test-path $arg) {
            recycle $arg
        } elseif ($arg -match '-h|/\?') {
            echo $help
        } else {
            [string]::Format('ValueError: "{0}" does not exist and is not a valid argument otherwise',$arg)
        }
    }
} else {
    echo $help
}