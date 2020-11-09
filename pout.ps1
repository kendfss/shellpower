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



# main($message)


# function main($arg) {
    # [string]::Format('fuck {0}', $1)
    # [string]::Format('{0}', $1)
    # echo $arg
    # $arg
# }