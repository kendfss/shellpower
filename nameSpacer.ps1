$help = "Generate unique version of a file path to avoid collisions
    usage:
        > nameSpacer path1 path2 ... path3
        
    -s, --separator
        the separator you would like to use for a given file's name and number
        default = _"
if ($args) {
    $sep = '_'

    $digits = @(0..9)
    $digits = [string]::Format("^[{0}]*$",$digits -join '')
    for ($i = 0; $i -lt $args.length; $i++) {
        if ($args[$i] -match '-s|--separator') {
            continue
        } elseif ($args[$i-1] -match '-s|--separator') {
            $sep = $args[$i]
            continue
        }
        $arg = $args[$i]
        $id = 2
        while (test-path $arg) {
            
            $newPath = $arg -replace('\\','/')
            $newPath = $newPath -split '\.'
            if ($newPath[0] -match($sep)) {
                if (($newPath[0] -split $sep)[-1] -match $digits) {
                    $id = [int](($newPath[0] -split $sep)[-1])
                    $oldbit = [string]::Format('{0}{1}',$sep,$id)
                    $newbit = [string]::Format('{0}{1}',$sep,$id+1)
                    $newPath[0] = $newPath[0] -replace($oldbit,$newbit)
                    $arg = $newPath -join('.')
                } else {
                    $newPath[0] += [string]::Format('{0}{1}',$sep,$id)
                    $arg = $newPath -join('.')
                    $id += 1
                }
            } else {
                $newPath[0] += [string]::Format('{0}{1}',$sep,$id)
                $arg = $newPath -join('.')
                $id += 1
            }
        }
        $arg
    }
} else {
    $help
}
