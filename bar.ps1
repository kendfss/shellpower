$line = ''

switch ($args.length) {
    {$_ -gt 2} {
        throw "Too many args to parse"
        break
    }
    (2) {
        $char = $args[0]
        $times = $args[1]
        break
    } 
    (1) {
        $char = "*"
        $times = $args[0]
        break
    } 
    (0) {
        $char = "*"
        $times = 25
        break
    } 

}

for ($i=0; $i -lt $times; $i++) {
    $line += $char
}
echo $line