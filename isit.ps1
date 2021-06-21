foreach ($arg in $args) {
    if (Get-Command $arg -errorAction SilentlyContinue) {
        [boolean] 1
    } else {
        [boolean] 0
    }
}
