if ($args.length) {
    foreach ($arg in $args) {ffplay (ls)[$arg].name}
} else {
    foreach ($i in ls) {ffplay $i.name}
}