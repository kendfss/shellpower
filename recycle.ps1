Add-Type -AssemblyName Microsoft.VisualBasic

foreach ($arg in $args) {
    if (isfile $arg) {
        "recycling file"
        [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteFile($arg,'OnlyErrorDialogs','SendToRecycleBin')
    } elseif (isdir $arg) {
        "recycling directory"
        [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteDirectory($arg,'OnlyErrorDialogs','SendToRecycleBin')
    } else {
        [string]::Format('ValueError: "{0}" does not exist',$arg)
    }
}
