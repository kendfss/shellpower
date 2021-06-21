if ($args.length) {
    foreach ($arg in $args) {
        explorer $arg
    }
} else {
    explorer .
}