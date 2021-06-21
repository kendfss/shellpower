$help = "echo a given index-length pair
usage:
    > ind 1 2
    1 of 2
"

if ($args.length -eq 2) {
    [string]::Format("{0} of {1}", $args[0], $args[1])
} else {
    $help
}