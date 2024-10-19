$destination = $ytdls
$origin = location
$n = 0

foreach ($link in $args) {
    $n += 1
    cd $destination
    ind $n $args.length
    # youtube-dl $link
    yt-dlp $link
    cd $origin
    ''
    ''
    ''
    ''
}

foreach ($i in $(1..$n)) {
    play (get-random)
}
