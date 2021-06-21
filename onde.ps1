$help = 'find the path to the given cmdlets
    usage:
        > onde cmd1 ... cmdN
        
    modifiers:
        
        -v
            verbose output'
        

if ($args.length) {
    $verbose = $args.contains('-v')
    foreach ($arg in $args) {
        if ($arg -ne '-v') {
            if ($verbose) {
                $arg
                where.exe $arg
                ''
                ''                    
            } else {
                where.exe $arg
            }
        }
    }
} else {
    $help
}
