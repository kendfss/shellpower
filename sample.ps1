if ($args.length) {
    foreach ($arg in $args) {
        mv $arg f:/ytdls/samples/
    }
} else {
    mv (p) f:/ytdls/samples/
}
