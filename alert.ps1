$n = if ($args.length) {$args[0] - 1} else {(get-random 12)+1}
echo $n
foreach ($i in (0..$n)) {play (get-random)}
