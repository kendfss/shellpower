$origin = location
$i = 1
$d = 'F:\samples\Soundflowering\spleeted'

foreach ($src in $args) {
    cd '~'
    [string]::Format("{0} of {1}", $i, $args.length)
    $src
    $namext = ($src -split '\\')[-1]
    $name = [io.path]::GetFileNameWithoutExtension($namext)
    $dst = Join-Path $d $name
    $dst
    spleeter separate -f "{filename}/{filename}-{instrument}.{codec}" -c ogg -p spleeter:5stems -o $d $src
    start $dst
    set-clipboard $dst
    $i += 1
}

cd $origin