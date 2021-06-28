$names = onde go
$names = ($names.gettype().basetype.name -eq 'array') ? $names : [array]$names
cd (split-path $names[0])
cd ..
