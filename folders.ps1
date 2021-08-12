# $Script:thisDir = Split-Path $MyInvocation.MyCommand.Path -Parent

if ($args.length -gt 0) {
    for ($i=0; $i -lt $args.length; $i++) {
        blank (($i -gt 0) ? 3: 0)
        $arg = $args[$i]
        foreach ($name in ls -directory -name $arg) {
            $pth = join-path $arg $name
            echo $pth
        }
    }
} else {
    $here = pwd
    folders $here
}
