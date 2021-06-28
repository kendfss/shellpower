if ($args.length) {
    foreach ($arg in $args) {
        touch $arg
        # "E:\IDEs\Sublime Text 3\sublime_text.exe" $arg
        sublime $arg
    } 
} else {
    sublime
}