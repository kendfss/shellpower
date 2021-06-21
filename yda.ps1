$destination = "F:\ytdls"
$origin = location
$n = 0

foreach ($arg in $args) {
    $n += 1
    cd $destination
    [string]::Format("{0} of {1}", $n, $args.length)
    youtube-dl -x $arg    
    cd $origin
    ''
    ''
    ''
    ''
}

foreach ($i in $(1..$n)) {
    play (get-random)
}
