$help = 'Obtain the extension of a file-path string
    usage:
        > splitext arg1 ... argN'


function parseNamed($rg) {
    if ($rg.contains('.')) {
        $namext = $rg -split '\.'
        $ext = $namext[-1]
    } else {
        $ext = ''
    }
    return $ext
}


if ($args) {
    foreach ($arg in $args) {
        $isfile = $arg -match '\.|ReadMe'
        $hasdir = $arg -match '\\|/'
        if ($hasdir) {
            $name = ($arg -replace '/','\')
            $name = ($arg -split [regex]::escape('\\'))[-1]
        } else {
            $name = $arg
        }
        parseNamed($name)
    }
} else {
    $help
}