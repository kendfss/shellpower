# $origin = location

# pout $PSCommandPath

foreach ($arg in $args) {
    wsl touch $arg
}