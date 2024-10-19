
# function ls {
#     if ($args.length -gt 1) {
#         if (isdir $args[0]) {
#             for ($i=1; $i -lt $args.length; $i++) {
#                 get-childitem -name $args[0] $args[$i]
#             }
#         } else{
#             foreach ($arg in $args) {
#                 get-childitem -name $arg
#             }
#         }
#     } else {
#         get-childitem -name $args[0]
#     }
# }

# ls $args

function ls {
    if ($args.length -gt 1) {
        if (isdir $args[0]) {
            for ($i=1; $i -lt $args.length; $i++) {
                get-childitem -name $args[0] $args[$i]
            }
        } else{
            foreach ($arg in $args) {
                get-childitem -name $arg
            }
        }
    } else {
        get-childitem -name $args[0]
    }
}

ls $args
