$origin = location
foreach ($arg in $args)
{
    cd $arg
    ls .
    cd $origin
}
cd $arg
