
switch ($args.length) {
    {$_ -gt 3} {
        throw "Too many args to parse"
        break
    }
    {$_ -lt 2} {
        throw "Too few args to parse"
        break
    }
    (3) {
        $key = $args[0]
        $val = $args[1]
        $sep = $args[2]
        break
    }
    (2) {
        $key = $args[0]
        $val = $args[1]
        $sep = ""
        break
    }
}
$val = [System.Environment]::GetEnvironmentVariable($key) + $sep + $val
[System.Environment]::SetEnvironmentVariable($key, $val)