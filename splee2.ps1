param(
    [string]$srcs#,
    # [int]$stems=2
)

$i = 1
$d = 'F:\samples\Soundflowering\spleeted'
$sep = ';'
foreach ($src in $srcs -split $sep) {
# foreach ($src in $srcs -split '^') {
    [string]::Format("{0} of {1}", $i, ($srcs -split $sep).length)
    $src
    $namext = ($src -split '\\')[-1]
    $name = [io.path]::GetFileNameWithoutExtension($namext)
    $dst = Join-Path $d $name
    
    # if (-not (Test-Path $dst)) {
        # md $dst
    # }
    
    E:\Languages\Python37-64\python.exe -m spleeter separate -i $src -p spleeter:2stems -o $d
    start $dst
    $i += 1
    
}

# start $d