for ($i=0; $i -lt $args.length; $i++) {
    blank ($i -eq 0 ? 0: 3)
    ind ($i + 1) $args.length
    git clone $args[$i]
}
