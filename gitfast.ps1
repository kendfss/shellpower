$name = $args[0]
if (-not (isfile "readme.md")) {
    echo $name >> readme.md    
}
git init
git add *
git commit -m "first commit"
git branch -M main
git remote add origin ("git@github.com:kendfss/" + $name + ".git")
git push -u origin main
