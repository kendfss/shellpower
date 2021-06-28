$help = 'Start your new project by creating new files and running them in your favourite text editor

    > new name1 name2 nameN 
        will create:
            $base/name1.ps1
            $base/name2.ps1
            $base/nameN.ps1
        And then open each file with the system default
'
    
$base = "e:/shellpower"
if ($args.length) {
    foreach ($arg in $args) {
        $pth = join-path $base $arg
        $pth += ($pth.endswith(".ps1")) ? "" : ".ps1"
        touch $pth
        start (join-path $base "readme.md")
        start $pth
    }
} else {
    echo $help
}
