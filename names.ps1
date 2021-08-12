$rack = ls -name .
if ($args.length) {
    foreach ($arg in $args) {
        $rack = $rack | where {$_.tolower().contains($arg.tolower())}
    }
    # $rack = $rack | where {isfile $_}
}
$rack
# if ($args.length) {
#     for ($i=0; $i -lt $args.length; $i++) {
#         blank (($i -gt 0) ? 3: 0)
#         $arg = $args[$i]
#         ls -name $arg
#     }
# } else {
#     ls -name .
# }
