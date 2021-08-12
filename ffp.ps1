if ($args.length -gt 0) {
    if ($args.length -eq 1) {
        if ($args[0].gettype().basetype.name -eq "array") {
            $args = $args[0]
        }
    }
    for ($i=0; $i -lt $args.length; $i++) {
        blank ($i -eq 0 ? 0: 3)
        $args[$i]
        ffplay $args[$i]
    }
} else {
    $args = (get-clipboard) -split "\n"
    
    for ($i=0; $i -lt $args.length; $i++) {
        $arg = $args[$i]
        blank ($i -eq 0 ? 0: 3)
        
        if (isfile $arg) {
            ffplay $arg
        }
    }
}
