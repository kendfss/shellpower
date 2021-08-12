function isArray($obj) {
    [boolean](($args.gettype().basetype.name -eq 'array') ? 1 : 0)
}
echo $n
# $names = ($args.gettype().basetype.name -eq 'array') ? $args : [array]$args
$names = (isArray($args)) ? ((isArray($args[0]) )? $args[0]: $args) : [array]$args
$n = get-random ($names).length
# $names.gettype()
$item = ($names)[$n]
echo $item
set-clipboard $item
