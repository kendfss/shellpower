param(
    [string]$link,
    [string]$path
)

$client = new-object System.Net.WebClient
$client.DownloadFile($link,$path)