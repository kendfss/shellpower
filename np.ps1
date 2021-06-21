if ($args.length) {
    foreach ($arg in $args) {
        touch $arg
        notepad $arg
    }
} else {
    notepad
}
