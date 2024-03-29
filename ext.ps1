for ($i=0; $i -lt $args.length; $i++) {
    $ext = $args[$i]
    $ext = ($ext[0] -eq '.') ? $ext : '.' + $ext
    $pat = [regex]::escape($ext) + "$"
    
    blank (($i > 0) ? 3 : 0)
    
    $names = ls -n .
    $names = ($names.gettype().basetype.name -eq 'array') ? $names : [array]$names
    foreach ($name in $names) {
        if ($name -match $pat) {
            echo $name
        }
    }
} 
