param(
    [string]$link,
    [string]$path
)
# foreach ($arg in $args) {
    # $client = new-object System.Net.WebClient
    # $client.DownloadFile($link,$path)
# }
invoke-webrequest -uri $link -outfile $path