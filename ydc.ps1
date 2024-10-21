for ($i=0; $i -lt $args.length; $i++) {
    blank ($i -eq 0 ? 0: 3)
    yt-dlp -F $args[$i]
}
