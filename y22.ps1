$origin = location;
for ($i=0; $i -lt $args.length; $i++) {
    
    cd $ytdls
    blank ($i -eq 0 ? 0: 3)
    ind ($i+1) $args.length
    # youtube-dl -f 22 $args[$i]
    yt-dlp -f 22 $args[$i]
    cd $origin
}
