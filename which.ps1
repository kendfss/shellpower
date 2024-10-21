foreach ($arg in $args) {
    (Get-Command $arg -errorAction SilentlyContinue).Source
    # if (Get-Command $arg -errorAction SilentlyContinue) {
    #     [boolean] 1
    # } else {
    #     [boolean] 0
    # }
}
