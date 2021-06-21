if ($args.length) {
    # foreach ($arg in $args) {
    for ($i=0; $i -lt $args.length; $i++) {
        blank (($i -gt 0) ? 3: 0)
        $arg = $args[$i]
        ls -name $arg
    }
} else {
    ls -name .
}