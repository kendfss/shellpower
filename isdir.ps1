if ($args.contains([regex]::escape('-v'))) {
    foreach ($arg in $args) {
        if (-not $arg -match([regex]::escape('-v'))) {
            $isdir = Test-Path -Path $arg -PathType Container
            if ($args.length -gt 1) {
                [string]::Format('{0}:   {1}',$isdir,$arg)
            } else {
                echo $isdir
            }
        }
    }
} else {
    foreach ($arg in $args) {
        $isdir = Test-Path -Path $arg -PathType Container
        echo $isdir
    }
}