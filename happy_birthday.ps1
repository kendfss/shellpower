clear;

$name = $args[0]

$pitches = (8, 8, 10, 8, 15, 13, 8, 8, 10, 8, 18, 15, 8, 22, 28, 22, 15, 13, 10.5, 23, 23, 22, 15, 18, 15)
$lengths = ((3/4), (1/4), 1, 1, 1, 2, (3/4), (1/4), 1, 1, 1, 2, (3/4), (1/4), 1, 1, 1, 1, 1, (3/4), (1/4), 1, 1, 1, 2.5)

$hb = "ha ppy birth day to you"
# $words = ([string]::format("{0} {1} {2} {3} {4} {5}", $hb, $hb, "ha ppy birth day dear", $args[0], $args[1], $hb)) -split " "
$words = ([string]::format("{0} {1} {2} {3} {4} {5}", $hb, $hb, "ha ppy birth day dear", $name, $name, $hb)) -split " "
# $words = ([string]::format("{0} {1} {2} {3} {4} {5}", $hb, $hb, "pa ra bems pra vo ce nesta data ", $name, $name, $hb)) -split " "

$root = 440
$time = 750
$octave = 12

foreach ($i in (0..($pitches.length-1))) {
    $pitch = $root + (($root / $octave) * $pitches[$i])
    $length = $lengths[$i] * $time
    # [string]::format("{0}: {1}", $pitches[$i], $pitch)
    $words[$i]
    # $pitches[$i]
    [console]::beep($pitch, $length)
}