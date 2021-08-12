$help = 'Create new powershell scripts

    > new name1 name2 ... nameN 
        will create:
            $scripts/name1.ps1
            $scripts/name2.ps1
            ...
            $scripts/nameN.ps1
        And then open each file with the system default
'
    
if ($args.length) {
    foreach ($arg in $args) {
        $pth = join-path $scripts $arg
        $pth += ($pth.endswith(".ps1")) ? "" : ".ps1"
        touch $pth
        editor (join-path $scripts "readme.md")
        editor $pth
    }
} else {
    echo $help
}
