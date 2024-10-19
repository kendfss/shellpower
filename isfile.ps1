foreach ($arg in $args) {
    Test-Path -Path $arg -PathType Leaf
}
