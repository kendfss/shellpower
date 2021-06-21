if ($args.length) {
    foreach ($arg in $args) {
        if ($arg -eq "/*") {
            foreach ($i in ls) {
                n++ $i
            }
        } else {
            touch $arg
            n++ $arg
        }
    }
} else {
    n++
}
