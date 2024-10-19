$destination = $ytdls
$origin = location
$n = 0

foreach ($arg in $args) {
    $n += 1
    cd $destination
    ind $n $args.length
    yt-dlp -x $arg    
    cd $origin
    ''
    ''
    ''
    ''
}

foreach ($i in $(1..$n)) {
    play (get-random)
}
