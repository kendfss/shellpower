foreach ($arg in $args) {
    if (-not (test-path $arg)) {
        md $arg
        cd $arg
    } else {
        cd $arg
    }
}