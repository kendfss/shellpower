function so($path) {
    $folder = (dirname $path)
    $name = (basename $path)
    if ($folder -eq "") {
        $folder = $pwd.Name
    }
    if (isdir $path) {
        $total = 0
        # foreach ($item in (ls $path)) {
        #     $ipath = (join-path $path $item.Name)
        #     if (isfile $ipath) {
        #         $total += $item.Length
        #     } elseif (isdir $ipath) {
        #         $total += (so $ipath)
        #     }
        # }
        ls $path | % { $ipath=(join-path $path $_.Name); if (isfile $ipath) { $total+=$_.Length } elseif (isdir $ipath) { $total+=(so $ipath)} }
        echo $total
    } elseif (isfile $path) {
        ls $folder | % { if($_.Name -eq $name) { echo $_.Length } }    
    } else {
        echo $path is neither file or directory
    }
}
$args | % {so $_}
