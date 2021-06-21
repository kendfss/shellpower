$help = 'usage:
    > pow arg1 arg2
    arg1 ** arg2
'
$ctr = 1
if ($args.length -eq 2) {
    foreach ($i in (0..($args[1]-1))) {
        $ctr *= $args[0]
    }
    $ctr
} else {
    $help
}