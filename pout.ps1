param(
    [string]$message,
    [int]$num = 1
)

if ($num -ne 0) {
    while ($num) {
        [string]::Format('{0}', $message)
        $num -= 1
    }
    } else {
    while (1) {
        [string]::Format('{0}', $message)
        $num -= 1
    }
}