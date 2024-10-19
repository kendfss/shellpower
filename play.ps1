$root = 440
$octave = 5    
$length = 300 # milisecs

foreach ($i in $args) {
    # if (($i -is [int32]) -or ($i -is [int64]) -or ($i -is [double])) {
    if (($i -is [int32]) -or ($i -is [int64]) -or ($i -is [double])) {
        # $freq = $root + (($root / $octave) * ($i % $octave))
        $freq = $root / $octave
        # $freq
        $freq *= $i % $octave
        # $freq
        $freq += $root
        # $freq
        [console]::beep($freq, $length)
    } elseif ($i -is [array]) {
        foreach ($j in $i) {
            # play $j -root $root -octave $octave -length $length 
            play $j 
        }
    }   
}
