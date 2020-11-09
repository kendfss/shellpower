param(
    [string]$links
)

$sep = ','
$destination = "c:\users\kenneth\videos\ytdls"
$origin = location
$links -split ','

cd $destination

$n = 1

''
''
''
''
foreach ($link in $links -split $sep) {
    [string]::Format("{0} of {1}", $n, ($links -split $sep).length)
    youtube-dl $link
    $n += 1
    date
    cd $origin
    ''
    ''
    ''
    ''
}

start $destination