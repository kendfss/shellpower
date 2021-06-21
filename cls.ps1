clear
if ($args.length) {
    $origin = location
    foreach ($arg in $args) {
        cd $arg
        ls .
        cd $origin
    }
    cd $origin
} else {
    ls .
}
