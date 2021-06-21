foreach ($arg in $args) {
    # $isfile = Test-Path -Path $arg -PathType Leaf
    Test-Path -Path $arg -PathType Leaf
    # echo $isfile
    # yield $isfile
}


# rfile