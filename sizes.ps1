$title = "size "
$index = 2
$sizes = $(1, 1kb, 1mb, 1gb)
$size_names = $("b", "kb", "mb", "gb")

if ($args.length) {
    if ($args[$args.length-1].gettype().name.tolower().contains('int')) {
        $index = $args[$args.length-1] % $sizes.length
        $args = $args[0..($args.length-2)]
    }
    $size = $sizes[$index]
    $title += "(" + $size_names[$index] + ")"
    $title = "size"
}

$rack = ls

foreach ($arg in $args) {
    $rack = $rack | where {$_.name.tolower().contains($arg.tolower())}
}
$rack = $rack | where {isfile $_}

$rack | select-object name, @{name=$title; expression={[int64]($_.length / $size)}}

# foreach ($item in $rack) {
#     $item.size = [int64]($item.length / $size)
# }
# $rack | select-object name, size
