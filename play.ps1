$root = 440
$octave = 11    
$length = 300 # milisecs

foreach ($i in $args) {
    if (($i -is [int32]) -or ($i -is [int64]) -or ($i -is [double])) {
        [console]::beep($root + (($root / $octave) * ($i % $octave)), $length)
    } elseif ($i -is [array]) {
        foreach ($j in $i) {
            play $j
        }
    }   
}