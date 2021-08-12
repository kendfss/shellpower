if ($args.length) {
    for ($i=0; $i -lt $args.length; $i++) {
        blank ($i -gt 0 ? 3 : 0)
        go doc $args[$i]
    }
} else {
    go doc
}
