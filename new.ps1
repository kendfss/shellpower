$help = 'Start your new project by creating new files and running them in your favourite text editor

    > new test test2 testdir/test3
        will create:
            ./test
            ./test2
            ./testdir/
            ./testdir/test3
        And then open each file in "npp.exe", wherever that may be on your path ;)
'
    
$base = "e:/shellpower"
if ($args) {
    foreach ($arg in $args) {
        # $name = namespacer $arg
        # if (split-path $name) {
            # $folder = split-path $name
            # if (-not (isdir $folder)) {
                # md $folder
            # }
        # }
        # if (-not (isfile $name)) {
            # touch $name
        # }
        $pth = join-path $base $arg
        $pth += ($pth.endswith(".ps1")) ? "" : ".ps1"
        # echo $pth
        touch $pth
        # test-path $pth
        start $pth
    }
} else {
    echo $help
}
