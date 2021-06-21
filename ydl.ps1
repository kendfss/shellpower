$destination = "F:\ytdls"
$origin = location
$n = 0

foreach ($link in $args) {
    $n += 1
    cd $destination
    [string]::Format("{0} of {1}", $n, $args.length)
    youtube-dl $link
    cd $origin
    ''
    ''
    ''
    ''
}

foreach ($i in $(1..$n)) {
    play (get-random)
}