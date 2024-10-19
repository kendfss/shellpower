$help = 'Create new powershell scripts

    > new name1 name2 ... nameN 
        will create:
            $scripts/name1.ps1
            $scripts/name2.ps1
            ...
            $scripts/nameN.ps1
        And then open each file with the "editor" command defined in $profile 
'


$pths=@((join-path $scripts "readme.md"))

if ($args.length) {
    foreach ($arg in $args) {
        $pth = join-path $scripts $arg
        $pth += ($pth.endswith(".ps1")) ? "" : ".ps1"
        touch $pth
        $pths += $pth
    }
} else {
    echo $help
}

# echo $pths

editor ($pths)

# clean up
foreach ($file in (dir $scripts)) {
    if (!$file.length) {
        rm $file
    }
}
