if ($args.length -gt 0) {
    for ($i=0; $i -lt $args.length; $i++) {
        blank (($i -gt 0) ? 3: 0)
        $arg = $args[$i]
        foreach ($name in ls -file -name $arg) {
            $pth = join-path $arg $name
            echo $pth
        }
    }
} else {
    $here = pwd
    files $here
}
