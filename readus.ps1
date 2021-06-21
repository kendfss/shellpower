foreach ($d in ls) {
    $path = $d.name+'/readme.md'
    if (isfile $path) {
        try  {
            $path
            cat $path
            bar 
            blank 10
        } catch {
            continue
        }
    }
}