$help = 'Execute string arguments
    usage:
        > exec arg1 ... argN'

if ($args) {
    foreach ($arg in $args) {
        # $ExecutionContext.InvokeCommand.ExpandString($arg)
        invoke-expression $arg
    }    
} else {
    $help
}
