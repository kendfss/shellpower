if ($args.length) {
    $out = "";
    # foreach ($path in $args) {
    for ($o=0; $o -lt $args.length; $o++) {
        $path = $args[$o]
        $path = ("/mnt/" + (($path -replace "\\", "/") -replace ":", "")).tolower() 
        echo $path
        echo $path
        echo $path
        # $out += '"' + ("/mnt/" + (($path -replace "\\", "/") -replace ":", "")).tolower() + '"'
        # $out += ($o -le $args.length-2) ? "\n" : ""
        $out += $path
        $out += ($o -le $args.length-2) ? " " : ""
    }
    set-clipboard $out
} else {
    $path = pwd;
    set-clipboard ("/mnt/" + (($path -replace "\\", "/") -replace ":", "")).tolower()
}