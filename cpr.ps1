if ($args.length) {
    $index = get-random $args[0].length
    $item = $args[0][$index]
    echo $item
    set-clipboard $item
} else {
    $n = get-random (names).length
    $item = (names)[$n]
    echo $item
    set-clipboard $item
}
