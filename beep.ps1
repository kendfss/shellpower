param(
    [double]$freq = 440,
    [double]$len = 300 
)

[console]::beep($freq, $len)
