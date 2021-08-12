for ($i=0; $i -lt $args.length; $i++) {
    blank ($i -eq 0 ? 0: 3)
    youtube-dl -F $args[$i]
}
