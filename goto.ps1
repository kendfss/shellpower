$help = 'Open explorer in the directory containing the given cmdlets/applications/scripts if they are on the path/in the pwd
    example
    > goto python
    path/to/directory/containing/python.exe
    
    > goto julia gcc
    path/to/directory/containing/julia.exe
    path/to/directory/containing/gcc.exe
'

if ($args) {
    foreach ($arg in $args) {
        $path = (onde $arg)
        $type = $path.gettype()
        if (-not ($path -is [string])) {
            $path = $path[0]
        }
        
        $path = split-path $path
        $path
        start $path
    }
} else {
    $help
}
