$ext = $args[0];
$ext = ($ext[0] -eq '.') ? $ext : '.' + $ext
$pat = [regex]::escape($ext) + "$"
$args = $args[1..$args.length]
$args = $args.length ? $args : [array]"."

for ($i=0; $i -lt $args.length; $i++) {
    $arg = $args[$i]
    
    blank (($i > 0) ? 3 : 0)
    
    $names = ls -n $arg
    $names = ($names.gettype().basetype.name -eq 'array') ? $names : [array]$names
    foreach ($name in $names) {
        if ($name -match $pat) {
            echo $name
        }
    }
    
} 
